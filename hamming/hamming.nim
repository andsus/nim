import sequtils

proc distance*(left_strand: string, right_strand: string): int = 
    if left_strand.len != right_strand.len:
        raise newException(ValueError, "Left strands and right strands length unequal")
    for strand_pair in zip(left_strand,right_strand):
        if strand_pair[0] != strand_pair[1]:
            inc(result)
        



