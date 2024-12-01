extension FirstOrNullExtension<T> on List<T> {
  T? firstOrNullWhere(bool Function(T) condition) {
    Iterable<T> filteredList = where(condition);

    return filteredList.isNotEmpty ? filteredList.first : null;
  }
}
