extension KQI on int {
  String toPrice() {
    if (this.toString().length > 2) {
      var value = this.toString();
      value = value.replaceAll(RegExp(r'\D'), '');
      value = value.replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), ',');
      return value;
    }
    return this.toString();
  }
}
