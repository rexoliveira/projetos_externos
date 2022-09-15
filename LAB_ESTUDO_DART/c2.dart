class Produto {
  @override
  String toString() {
    return "Intancia do meu Produto";
  }
}

void main(List<String> args) {
  /* Type type = Produto;
  print("\x1B[2J\x1B[0;0H");
  print(type.toString()); */

  /* Produto produto = Produto();
  print("\x1B[2J\x1B[0;0H");
  print(produto.runtimeType); */

  var produto = getInstance();
  print("\x1B[2J\x1B[0;0H");
  print(produto is Produto);
}

Object getInstance() => Produto();
