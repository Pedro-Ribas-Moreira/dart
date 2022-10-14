import 'dart:ffi';

void main(List<String> args) {
  Book newBook = Book("Douglas Adams", "The Hitchhiker`s Guide to the GAlaxy",
      1978, 00001, 9.5);
  newBook.getInfo();
  newBook.inspiration();

  BiographyBook newBook2 = BiographyBook("Guillem Balague",
      "Pep Guardiola: Another Way of Winning", 2018, 00002, 8.8, "biography");
  newBook2.getInfo();
  newBook2.inspiration();
}

class Book implements writeBook {
  String author;
  String title;
  int releaseDate;
  int bookId;
  double rating;

  Book(this.author, this.title, this.releaseDate, this.bookId, this.rating);

  getInfo() {
    print(
        "$title was written by $author, on $releaseDate. Its current rating in our website is $rating");
  }

  @override
  void inspiration() {
    print("find inspiration");
  }

  @override
  void writing() {
    print("writing the book!");
  }

  @override
  void publishing() {
    print("Publishing the book...");
  }
}

class BiographyBook extends Book {
  String genre;

  BiographyBook(
    String author,
    String title,
    int releaseDate,
    int bookId,
    double rating,
    this.genre,
  ) : super(author, title, releaseDate, bookId, rating);
  @override
  void inspiration() {
    print("contacting persona...");
  }
}

abstract class writeBook {
  void inspiration();
  void writing();
  void publishing();
}
