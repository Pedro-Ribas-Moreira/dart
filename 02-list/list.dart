// Lists
void main() {
  String name1 = "Marvin The Paranoid Droid";
  String name2 = "Arthur Dent";
  String name3 = "Zaphod Beeblebrox";
  String name4 = "Ford Perfect";
  String name5 = "Trillian";
  String name6 = "Slartibarfast";

  int num = 2;

  List<String> listNames = [name1, name2, name3, name4, name5, name6];
  print(listNames[3]);
  print(listNames[num]);
  print(listNames.length);

  listNames.add("Douglas Adams");
  List<String> subList = listNames.sublist(1, 4);

  print(listNames);
  print(subList);

  listNames.forEach((element) {
    print(element);
  });

  if (listNames.contains("Douglas Adams")) {
    print("this is the author");
  } else {
    print("author not found");
  }
  var p = listNames.reduce((value, element) {
    return value + "// " + element;
  });
  print(p);

  Iterable b = listNames.where((element) => element.length <= 8);
  print(b);
}
