import 'classExtends.dart';

void main(List<String> args) {
  //create a new book using a enum as argument
  Book newBook = Book("Douglas Adams", "The Hitchhiker`s Guide to the Galaxy",
      LibraryBooks.fiction, 1978, 0001, 9.5);
  //check type of book
  newBook.getInfo();

// Creating a Set with planets names -- set do not allow duplicates ---
  Set<String> planets = <String>{};
  planets = registerPlanets("Magrathea", planets);
  planets = registerPlanets("Vogsphere", planets);
  planets = registerPlanets("Betelgeuse V.", planets);
  planets = registerPlanets("NowWhat", planets);
  planets = registerPlanets("Vogsphere", planets);
  print(planets);
}

class Book {
  String author;
  String title;
  LibraryBooks type;
  int releaseDate;
  int bookId;
  double rating;

  Book(this.author, this.title, this.type, this.releaseDate, this.bookId,
      this.rating);

  void getInfo() {
    switch (type) {
      case LibraryBooks.fiction:
        print("This is a fiction book");
        break;
      case LibraryBooks.adventure:
        print("This is an adventure book");
        break;
      default:
        {
          print("this is a humor book");
        }
    }
  }
}

// create an enum;
enum LibraryBooks { adventure, fiction, humour }

//function to use with Set
registerPlanets(String planet, Set<String> listOfPlanets) {
  listOfPlanets.add(planet);
  return listOfPlanets;
}
