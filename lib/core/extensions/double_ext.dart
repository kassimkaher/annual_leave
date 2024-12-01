extension KQD on double {
  double finalPrice(double waller_balance) {
    double finalprice = 0;
    finalprice = waller_balance - this;
    if (finalprice >= 0) {
      return 0;
    }
    return finalprice * -1;
  }

  String toPrice() {
    final price = this.toQuantity();

    if (price.length > 2) {
      var value = this.toInt().toString();
      value = value.replaceAll(RegExp(r'\D'), '');
      value = value.replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), ',');
      return value;
    }
    return price;
  }

  String toQuantity() {
    final numb = this % 1;
    if (numb > 0) {
      return this.toString();
    }

    return this.toInt().toString();
  }
}
