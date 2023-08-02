class AssignmentData {
  final String subjectName;
  final String topicName;
  final String assignDate;
  final String lastDate;
  final String status;

  AssignmentData(
    this.subjectName,
    this.topicName,
    this.assignDate,
    this.lastDate,
    this.status,
  );
}

List<AssignmentData> assignment = [
  AssignmentData(
    'Biology',
    'Red Blood Cells',
    '19 Oct 2022',
    '25 Oct 2022',
    'Pending',
  ),
  AssignmentData(
    'Physics',
    'bohr Theory',
    '19 Nov 2022',
    '25 Nov 2022',
    'Pending',
  ),
  AssignmentData(
    'Biology',
    'Red Blood Cells',
    '19 Oct 2022',
    '25 Oct 2022',
    'Pending',
  ),
];
