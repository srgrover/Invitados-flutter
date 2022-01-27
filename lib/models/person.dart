class Person {
  final String? id;
  final String name;
  final String? surname;
  final String relationship;
  final String gender;
  final String? location;
  final String classification;
  final bool isInvited;
  final bool isConfirmed;
  final bool isRejected;
  final String group;
  final DateTime createdDate;

  Person({
    this.id,
    required this.name,
    this.surname,
    required this.relationship,
    required this.gender,
    this.location,
    required this.classification,
    required this.isInvited,
    required this.isConfirmed,
    required this.isRejected,
    required this.group,
    required this.createdDate,
  });

  //Person(this.id, this.name, this.surname, this.relationship, this.gender, this.location, this.classification, this.isInvited, this.isConfirmed, this.isRejected, this.group, {});
}

List<Person> personasList = [
  Person(
      id: "1",
      name: 'Juanito',
      surname: "Salvaje",
      relationship: "Primo/a",
      gender: "Hombre",
      location: "Bailén",
      classification: "Adulto",
      isInvited: false,
      isConfirmed: false,
      isRejected: false,
      group: "1",
      createdDate: DateTime(2022)),
  Person(
      id: "2",
      name: 'Marianica',
      surname: "Melones",
      relationship: "Tio/a",
      gender: "Mujer",
      location: "Bailén",
      classification: "Adulto",
      isInvited: true,
      isConfirmed: false,
      isRejected: false,
      group: "1",
      createdDate: DateTime(2022)),
  Person(
      id: "3",
      name: 'Raquelita',
      surname: "Lugares",
      relationship: "Hermano/a",
      gender: "Mujer",
      location: "Bailén",
      classification: "Adulto",
      isInvited: false,
      isConfirmed: true,
      isRejected: false,
      group: "2",
      createdDate: DateTime(2022)),
  Person(
      id: "4",
      name: 'Javito',
      surname: "Tunante",
      relationship: "Primo/a",
      gender: "Hombre",
      location: "Bailén",
      classification: "Adulto",
      isInvited: false,
      isConfirmed: false,
      isRejected: true,
      group: "3",
      createdDate: DateTime(2022))
];
