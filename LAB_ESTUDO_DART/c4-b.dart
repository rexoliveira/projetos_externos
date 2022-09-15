//Construtor Default, Nomeado, Redirecionado, super, this e factory (Classes)

class ClienteModel {
  late String nome;

  ClienteModel.fromJson(Map data) {
    this.nome = data['nome'];
  }
}

class Cliente extends ClienteModel {
  Cliente(Map data) : super.fromJson(data);
}

void main(List<String> args) {
  final cliente = Cliente({"nome": "Felipe"});

  print("\x1B[2J\x1B[0;0H");
  print("1================================================");
  assert(cliente.nome == "Felipe");
}
