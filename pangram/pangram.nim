import strutils

proc isPangram*(input: string): bool = 
    var letterSet: set[char]
    for ch in input:
        if ch.isAlphaAscii:
            letterSet.incl ch.toLowerAscii
    letterSet.len == 26



