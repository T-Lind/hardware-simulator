import sys

ops = {
    '0000': ('ADD', 3),
    '0001': ('ADDI', 3),
    '0010': ('SUB', 3),
    '0011': ('SUBI', 3),
    '1000': ('READ', 2),
    '1001': ('BEQ', 2),
    '1010': ('WRITE', 2),
    '1011': ('JMP', 1),
    '1110': ('INP', 1),
}

def is_valid(s, strict=True):
    if strict:
        return all(c in '01' for c in s)
    return all(c in '01*?' for c in s)

def get_reg(b):
    return f"R{int(b, 2)}"

def get_imm(b):
    v = int(b, 2)
    if v & 0x20 and v > 32:
        v -= 64
    return str(v)

def proc_line(line, n):
    line = line.strip()
    
    if not line:
        return None
    
    if len(line) != 16:
        raise ValueError("invalid operation")
    
    if not is_valid(line[:4], True):
        raise ValueError("invalid operation")
    
    op = line[:4]
    if op not in ops:
        raise ValueError("invalid operation")
    
    inst, nargs = ops[op]
    res = inst
    
    if nargs == 3:
        if not is_valid(line[4:10], True):
            raise ValueError("invalid operation")
        rd = get_reg(line[4:7])
        r1 = get_reg(line[7:10])
        
        if inst in ['ADDI', 'SUBI']:
            if not is_valid(line[10:16], True):
                raise ValueError("invalid operation")
            imm = get_imm(line[10:16])
            res = f"{inst} {rd}, {r1}, {imm}"
        else:
            if not is_valid(line[10:13], True) or not is_valid(line[13:], False):
                raise ValueError("invalid operation")
            r2 = get_reg(line[10:13])
            res = f"{inst} {rd}, {r1}, {r2}"
    
    elif nargs == 2:
        if not is_valid(line[4:10], True):
            raise ValueError("invalid operation")
        r1 = get_reg(line[4:7])
        r2 = get_reg(line[7:10])
        if is_valid(line[10:], False):
            res = f"{inst} {r1}, {r2}"
        else:
            raise ValueError("invalid operation")
    
    elif nargs == 1:
        if not is_valid(line[4:7], True):
            raise ValueError("invalid operation")
        rd = get_reg(line[4:7])
        if is_valid(line[7:], False):
            res = f"{inst} {rd}"
        else:
            raise ValueError("invalid operation")
    
    return res

n = 0
try:
    for line in sys.stdin:
        n += 1
        try:
            res = proc_line(line, n)
            if res:
                print(res)
        except ValueError as e:
            print(f"ERROR: line {n} ({str(e)})")
            break
except Exception as e:
    print(f"ERROR: line {n} (invalid operation)")