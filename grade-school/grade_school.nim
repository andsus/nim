import std/[algorithm, sequtils]

type
  Student* = tuple
    name: string
    grade: int

  School* = object
    students*: seq[Student]

proc sortedRoster(students: seq[Student]): seq[Student] = 
    students.sortedByIt((it.grade, it.name))


proc roster*(school: School): seq[string] =
    school.students
    .sortedRoster
    .mapIt(it.name)

proc grade*(school: School, grade: int): seq[string] =
    school.students
    .filterIt(it.grade == grade)
    .sortedRoster
    .mapIt(it.name)

