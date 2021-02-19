import strutils

proc hey*(utterance: string): string =
    let 
        isSilence  = utterance.isEmptyOrWhitespace
        isQuestion = utterance.strip.endsWith("?")
        isShouting = utterance.contains(Letters) and utterance.toUpperAscii == utterance
     
    if isSilence:
        "Fine. Be that way!"
    elif isQuestion and isShouting:
        "Calm down, I know what I'm doing!"
    elif isQuestion:
        "Sure."
    elif isShouting: 
        "Whoa, chill out!" 
    else:
        "Whatever."
