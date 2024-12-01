class GetTransactionParam {
  final String startDate;
  final String endDate;

  GetTransactionParam({
    required this.startDate,
    required this.endDate,
  });

  factory GetTransactionParam.currentMonth() {
    final now = DateTime.now();
    final startDate = DateTime(now.year, now.month, 1);
    final endDate = DateTime(now.year, now.month + 1, 0);
    return GetTransactionParam(
      startDate: startDate.toString().split(" ")[0],
      endDate: endDate.toString().split(" ")[0],
    );
  }
  factory GetTransactionParam.byMonth({required DateTime date}) {
    final startDate = DateTime(date.year, date.month, 1);
    final endDate = DateTime(date.year, date.month + 1, 0);
    return GetTransactionParam(
      startDate: startDate.toString().split("T")[0],
      endDate: endDate.toString().split("T")[0],
    );
  }

  factory GetTransactionParam.byDate(
      {required DateTime startDate, required DateTime endDate}) {
    return GetTransactionParam(
      startDate: startDate.toString().split("T")[0],
      endDate: endDate.toString().split("T")[0],
    );
  }
}
