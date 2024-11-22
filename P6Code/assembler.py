import sys

ops = {
    'ADD':  ('0000', 3),
    'ADDI': ('0001', 3),
    'SUB':  ('0010', 3),
    'SUBI': ('0011', 3),
    'READ': ('1000', 2),
    'BEQ':  ('1001', 2),
    'WRITE':('1010', 2),
    'JMP':  ('1011', 1),
    'INP':  ('1110', 1),
}

def parse_reg(r):
    if not r.startswith('R') or not r[1:].isdigit():
        return None
    n = int(r[1:])
    if 0 <= n <= 7:
        return n
    else:
        return None

def parse_imm(v):
    try:
        n = int(v)
        if n < 0:
            n = n & 0x3F
        else:
            n = n & 0x3F
        return n
    except:
        return None

def proc_line(ln, num):
    ln = ln.strip()
    if not ln:
        return None
        
    if ln.startswith('//'):
        return None

    if '**' in ln:
        raise ValueError(f"invalid syntax")
        
    if '//' in ln:
        ln = ln.split('//')[0].strip()
    
    valid_chars = set('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 ,-')
    if any(c not in valid_chars for c in ln):
        raise ValueError(f"invalid syntax")
    
    parts_with_commas = ln.split()
    for i in range(len(parts_with_commas) - 1):
        if parts_with_commas[i].endswith(',') and '  ' in ln[ln.find(parts_with_commas[i]):ln.find(parts_with_commas[i+1])]:
            raise ValueError(f"invalid syntax")
    
    original_parts = [p for p in ln.split() if p and p != ',']
    
    parts = []
    for part in ln.split(','):
        part = part.strip()
        if part:
            parts.extend(p for p in part.split() if p)
    
    if not parts:
        return None
        
    op = parts[0].upper()
    if op not in ops:
        raise ValueError(f"invalid operation")
    
    args = parts[1:]
    expected_args = ops[op][1]
    
    if len(original_parts) > len(parts):
        raise ValueError(f"invalid syntax")
    
    if op == 'WRITE' and (',' * 2 in ln or len(args) > 2):
        raise ValueError(f"invalid argument")
    elif len(args) != expected_args:
        raise ValueError(f"invalid syntax")
        
    mc = ops[op][0]
    
    if op in ['ADD', 'SUB']:
        rd = parse_reg(args[0])
        r1 = parse_reg(args[1])
        r2 = parse_reg(args[2])
        
        if None in [rd, r1, r2]:
            raise ValueError(f"invalid argument")
            
        mc += f"{rd:03b}{r1:03b}{r2:03b}***"
        
    elif op in ['ADDI', 'SUBI']:
        rd = parse_reg(args[0])
        r1 = parse_reg(args[1])
        im = parse_imm(args[2])
        
        if None in [rd, r1, im]:
            raise ValueError(f"invalid argument")
            
        mc += f"{rd:03b}{r1:03b}{im:06b}"
        
    elif op in ['READ', 'WRITE', 'BEQ']:
        r1 = parse_reg(args[0])
        r2 = parse_reg(args[1])
        
        if None in [r1, r2]:
            raise ValueError(f"invalid argument")
            
        mc += f"{r1:03b}{r2:03b}******"
        
    elif op == 'JMP':
        r1 = parse_reg(args[0])
        
        if r1 is None:
            raise ValueError(f"invalid argument")
            
        mc += f"{r1:03b}*********"
        
    elif op == 'INP':
        rd = parse_reg(args[0])
        
        if rd is None:
            raise ValueError(f"invalid argument")
            
        mc += f"{rd:03b}*********"
        
    return mc

lnum = 0
for line in sys.stdin:
    lnum += 1
    try:
        res = proc_line(line, lnum)
        if res:
            print(res)
    except ValueError as e:
        print(f"ERROR: line {lnum} ({str(e)})")
        break
