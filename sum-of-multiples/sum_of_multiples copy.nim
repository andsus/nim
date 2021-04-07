import sequtils

proc sum*(upper: int, multiplier: seq[int]): int =

    for n in 1..<upper:
        if multiplier.anyIt(it != 0 and n mod it == 0):
            result += n
            
    