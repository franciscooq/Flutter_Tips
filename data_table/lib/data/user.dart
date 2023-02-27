class User {
  String firstName;
  String lastName;
  double age;

  User({
    required this.firstName,
    required this.lastName,
    required this.age,
  });

  static List<User> getUsers() {
    return [
      User(firstName: "Francisco", lastName: "Queiroz", age: 33),
      User(firstName: "Nathalia", lastName: "Galvão", age: 29),
      User(firstName: "Lucas", lastName: "Junqueira", age: 18),
      User(firstName: "Pedro", lastName: "Antunes", age: 27),
      User(firstName: "Daniel", lastName: "Prado", age: 23),
      User(firstName: "Vanessa", lastName: "Nogueira", age: 28),
      User(firstName: "Livia", lastName: "Sananta", age: 37),
      User(firstName: "Roberto", lastName: "Gonçalves", age: 48),
    ];
  }
}
