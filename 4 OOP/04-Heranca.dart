class Human {
  void walk() {
    print("Humans walk!");
  }
}

class Person extends Human {
  void speak() {
    print("That person can speak");
  }

  @override
  void walk() {
    print("Person walking!");
  }
}

void main() {
  Person p = new Person();
  p.speak();
  p.walk();

  Human human = new Person();
  human.walk();
  // não pode chamar o speak..
}
