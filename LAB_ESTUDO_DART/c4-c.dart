//Construtor Default, Nomeado, Redirecionado, super, this e factory (Classes)

class Cliente {
  late String email;
  //Usar o assert/contains validar valor em tempo de execução
  Cliente.email(this.email):assert(email.contains("@"));
}

void main(List<String> args) {
  final cliente = Cliente.email("felipe@gmail.com");

  print("\x1B[2J\x1B[0;0H");
  print("1================================================");
  assert(cliente.email == "felipe@gmail.com");
}
