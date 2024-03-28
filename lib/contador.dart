class Contador<T extends num> {
  List<T> _item = [];
  void addAll(Iterable<T> iterable) => _item.addAll(iterable);
  void add(T value) => _item.add(value);

  T elementAt(int index) => _item.elementAt(index);
  void total() {
    num values = 0;
    _item.forEach((element) {
      values += element;
    });
    print(values);
  }
}
