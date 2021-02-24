main() {
  var list = [1, 'a', [], () => {}];
  var set = {1, 1, 'a', [], () => {}};
  var map = {
    'a': 0,
    true: [],
    () => {}: 1.0001
  };

  // print(list);
  // print(set);
  // print(map);

  dynamic list1 = [];
  var list2 = [];
  List list3 = []; // == List<dynamic>
  List<int> list4 = [1];
  List<List<int>> list5 = [
    [1],
    [1, 2]
  ];

  // list1 = {};
  // list2 = {};

  final list6 = []; // cannot be reassigned
  var list7 = const []; // compile-time constant
  const list8 = []; // == final list8 = const []; contains final

  // list6 = [];
  // list7.add(5); // cannot add to an unmodifiable list
  // list8 = [];
  // list8.add(5);
}
