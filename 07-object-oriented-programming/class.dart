void main(List<String> args) {
  String title = "The Hitchhiker's Guide to the Galaxy";
  String author = "Douglas Adams";
  double rating = 9.5;
  int year = 1978;

  Books newBook = Books(title, author, rating, year);

  print(newBook.author);
}

class Books {
  String title;
  String author;
  double rating;
  int year;
  bool? didIread;

  Books(this.title, this.author, this.rating, this.year, {this.didIread});
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