void main(List<String> args) {
  String title = "The Hitchhiker's Guide to the Galaxy";
  String author = "Douglas Adams";
  double rating = 4.5;
  int year = 1978;

  Books newBook = Books(title, author, rating, year, isRecommended: true);

  print(newBook.author);
  newBook.methodOne();
}

class Books {
  String title;
  String author;
  double rating;
  int year;
  bool? isRecommended;

  Books(this.title, this.author, this.rating, this.year, {this.isRecommended});

  methodOne() {
    if (isRecommended != null) {
      if (isRecommended == true) {
        print("This book is recommended.");
      } else {
        print("This book is not recommended.");
      }
    } else {
      bool result;
      result = rating >= 5;

      if (!result) {
        print("This book is not recommended.");
      } else {
        print("This book is recommended.");
      }
    }
  }
}
