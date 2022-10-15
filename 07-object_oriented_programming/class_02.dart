void main(List<String> args) {
  String title = "The Hitchhiker's Guide to the Galaxy";
  String author = "Douglas Adams";
  double rating = 9.5;
  int year = 1978;

  Books newBook = Books(title, author, rating, year);
  Books newBook2 = Books.greatest(
      author: "J. R. R. Tolkien", title: "The Lord of the Rings");
  Books newBook3 =
      Books.upperCases("A Song of Ice and Fire", "George R. R. Martin");
  print(newBook.author);
  print(newBook2.author);
  print(newBook3.author);
}

class Books {
  String title;
  String author;
  double? rating;
  int? year;
  bool? didIread;

  Books(this.title, this.author, this.rating, this.year, {this.didIread});
  Books.greatest({required this.author, required this.title});

  Books.upperCases(this.title, this.author) {
    title = title.toUpperCase();
    author = author.toUpperCase();
  }
}

bool didIread(String answer) {
  if (answer == "yes" || answer == "y") {
    return true;
  } else {
    return false;
  }
}


  // var author = "Deep Thought";
  // const question = "The Ultimate Question of Life";
  // final answer;
  // double timeToAnswer = 75e6;
  // var bookAuthor;
