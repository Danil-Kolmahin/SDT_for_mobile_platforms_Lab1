// dart --enable-asserts fileName.dart

main() {
  var condition = true; // [1, 2, 3].length == 4;
  assert(condition);
  if (condition) throw ("Failed assertion: 'condition': is not true.");
}
