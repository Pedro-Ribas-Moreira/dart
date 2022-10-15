import '../07-object-oriented-programming/enumSet.dart';

void main(List<String> args) {
  Books newBook = Books("Lotr", "Tolkien");

  print(Books.info);
  newBook.getInfo();
  // newBook.info;  -- this would not work as the static info is not available fo the instance. only if the method is used.
}

class Books {
  String title;
  String author;

  Books(this.title, this.author);
  static String info =
      "This info will be available to the class and not to the instance a new book";

  getInfo() {
    print("this function will show the info for an instance of Book");
    print(info);
  }
}
