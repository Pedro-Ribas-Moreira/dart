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

  characters1.addAll(characters2);
  print(characters1);
}
