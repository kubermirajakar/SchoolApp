class FeeData {
  final String receiptNo;
  final String month;
  final String date;
  final String paymentStatus;
  final String totalAmount;
  final String btnStatus;

  FeeData(this.receiptNo, this.month, this.date, this.paymentStatus,
      this.totalAmount, this.btnStatus);
}

List<FeeData> data = [
  FeeData('90872', 'October', '8 Oct 2022', 'Pending', '900\$', 'PAY NOW'),
  FeeData('89076', 'November', '12 Nov 2022', 'Pending', '700\$', 'DOWNLOAD'),
  FeeData('34624', 'December', '9 Jan 2022', 'Pending', '450\$', 'DOWNLOAD'),
];
