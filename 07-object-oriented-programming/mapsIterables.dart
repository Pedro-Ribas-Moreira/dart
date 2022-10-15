void main(List<String> args) {
//Testing iterables in na list
  List<String> characters1 = [
    "Arthur Dent",
    "Marvin The Paranoid Droid",
    "Ford Perfect",
  ];
  print(characters1);

  List<String> characters2 = [
    "Trillian",
    "Zaphod Beeblebrox",
    "Slartibartfast"
  ];
  print(characters2);

//combine lists and will modify initial list
  characters1.addAll(characters2);
  print(characters1);
  print(characters1.runtimeType);
//get items in a range inside a list
  var subList = characters1.getRange(2, 5);
  print(subList);
  print(subList.runtimeType);
  print(subList.toList().runtimeType);
//get range will not modify the initial list
  print(characters1);
}
