//Getters e Setters 🎯 (Classes)

class Usuario {
  String login;
  String senha;

  Usuario(this.login, this.senha);

  set setLogin(String login) {
    this.login = login + " !";
  }

  String get getLogin {
    return this.login + " !!";
  }
}

void main(List<String> args) {
  final usuario = Usuario("Login Dart", "Senha Dart");

  print("\x1B[2J\x1B[0;0H");
  print("1================================================");
  usuario.setLogin = "Dart 2 login";
  print(usuario.getLogin);
  usuario.senha = "Dart 2 senha";
  print(usuario.senha);
}
