import sequtils

proc sum*(upper: int, multiplier: seq[int]): int =
    proc isMultipleOf(n: int, multiplier: seq[int]): bool = 
        multiplier.anyIt(it != 0 and n mod it == 0)

    for n in 1..<upper:
        if n.isMultipleOf(multiplier): 
            result += n
            
    