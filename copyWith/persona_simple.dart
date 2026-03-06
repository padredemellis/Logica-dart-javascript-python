class PersonaSimple {
  final String name;
  final int score;

  PersonaSimple({required this.name, required this.score});

  PersonaSimple copyWith({String? name, int? score}) { //Declaramos el metodo con el tipo de la clase, sus parametros son nullables
    return PersonaSimple(
      name: name ?? this.name,
      score: score ?? this.score,
    ); // si me pasan un nuevo name lo uso, sino uso el que ya estaba
  }
}

void main() {
  final persona = PersonaSimple(name: "Emanuel", score: 34);
  final updatePersona = persona.copyWith(score: 1000);
}
