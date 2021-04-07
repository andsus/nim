import algorithm
import sequtils

type
  Student* = tuple
    name: string
    grade: int

  School* = object
    students*: seq[Student]

func roster*(school: School): seq[string] =
    school.students
    .sortedByIt((it.grade, it.name))
    .mapIt(it.name)

func grade*(school: School, grade: int): seq[string] =
  for student in school.students:
    if student.grade == grade:
      result.add student.name
  result.sort()