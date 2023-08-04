class ResultData {
  final String subjectName;
  final int totalMarks;
  final int obtainedMarks;
  final String grade;

  ResultData(this.subjectName, this.totalMarks, this.obtainedMarks, this.grade);
}

List<ResultData> result = [
  ResultData(
    'English',
    100,
    98,
    'A',
  ),
  ResultData(
    'Computer Science',
    100,
    50,
    'D',
  ),
  ResultData(
    'Physics',
    100,
    89,
    'B',
  ),
  ResultData(
    'Chemistry',
    100,
    79,
    'B',
  ),
  ResultData(
    'Mathematics',
    100,
    44,
    'D',
  ),
  ResultData(
    'Kannada',
    100,
    99,
    'A',
  ),
];
