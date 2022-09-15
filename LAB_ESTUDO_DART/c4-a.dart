//Construtor Default, Nomeado, Redirecionado, super, this e factory (Classes)

class Cliente {
  late String nome;
  late String email;

  /* Cliente() {
    this.nome = "Felipe";
    this.email = "felipe@gmail.com";
  } */

  //Contrução mais rápida
  /* Cliente()
      : nome = "Felipe",
        email = "felipe@gmail.com"; */

  /* Cliente(String nome, String email) {
    this.nome = nome;
    this.email = email;
  } */
  //Simplificado do construtor anterior
  /*Cliente(this.nome, this.email); */

  //Primeiro construtor
  Cliente();
  //Segundo construtor NOMEADO
  Cliente.nomeEmail(this.nome, this.email);
  //Consegue-se criar varios construtores
  Cliente.nome(this.nome);
  Cliente.email(this.email);
  
}

void main(List<String> args) {
  //() construtor default
  final cliente = Cliente.nomeEmail("Felipe", "felipe@gmail.com");
  final cliente2 = Cliente.nome("Felipe");
  final cliente3 = Cliente.email("felipe@gmail.com");

  //Passa no teste não aparece nada no terminal
  print("1================================================");
  assert(cliente.nome == "Felipe");
  assert(cliente.email == "felipe@gmail.com");
  print("2================================================");
  assert(cliente2.nome == "Felipe");
  print("3================================================");
  assert(cliente3.email == "felipe@gmail.com");
  //Não passa no teste e aparece uma exception no terminal
  /* assert(cliente.email != "felipe@gmail.com"); */

  //Comando no terminal para gerar um asset
  /* dart --enable-asserts main.dart */
}
