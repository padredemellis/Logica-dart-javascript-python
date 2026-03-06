class User {
  final String id;
  final String email;
  final String role;
  final bool isActive;

  const User({
    required this.id,
    required this.email,
    required this.role,
    required this.isActive,
  });

  User copyWith({String? id, String? email, String? role, bool? isActive}) {
    return User(
      id: id ?? this.id,
      email: email ?? this.email,
      role: role ?? this.role,
      isActive: isActive ?? this.isActive,
    );
  }
}

void main() {
  User usuario = User(
    id: "01",
    email: "usuario@user.com",
    role: "jefe",
    isActive: true,
  );
  User newUser = usuario.copyWith(id: "02");
}

/*
Conclusión
Si creas el objeto con valores constantes,

Dart puede evaluarlo en tiempo de compilación,

Y reutilizar memoria.
*/
