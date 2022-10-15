import 'dart:collection';

void main(List<String> args) {
  Character newCharacter = Character("Pedro", 28, "Brazilian");
  Character newCharacter2 = Character("Ronaldo Phenomenon", 46, "Brazilian");
  Map<String, dynamic> characters = {};

  //create a new item in map;
  characters[newCharacter.name] = newCharacter.age;
  print(characters);
  //find an item in map;
  print(characters["Pedro"]);

  //update an item in map;
  characters[newCharacter.name] = 29;
  print(characters[newCharacter.name]);

  //delete an item in map;
  characters.remove(newCharacter.name);
  print(characters);

  // Create an map with a class method;
  print(newCharacter.toMap());

  characters[newCharacter.name] = newCharacter.toMap();
  print("passing an map inside another map");
  print(characters);

  // adding more than one item;
  characters[newCharacter2.name] = newCharacter2.toMap();

  print(characters);
}

class Character {
  String name;
  int age;
  String nationality;

  Character(this.name, this.age, this.nationality);

  Map<String, dynamic> toMap() {
    Map<String, dynamic> result = {};

    result["name"] = this.name;
    result["age"] = this.age;
    result["nationality"] = this.nationality;
    return result;
  }
}
