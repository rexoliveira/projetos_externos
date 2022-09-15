//Metodos e Operadores 🤠 (Classes)
//https://dart.dev/guides/language/language-tour#methods

class Produto {
  final String nome;
  final double preco;

  Produto({required this.nome, required this.preco});

  double getTaxa() {
    return this.preco * 0.02;
  }

  //Usaando a palavra reservada "opeador" para que a
  //CLASSE Produto reconheça os operadores diretamente
  double operator +(Produto produto) {
    return this.preco + produto.preco + this.getTaxa() + produto.getTaxa();
  }
}

void main(List<String> args) {
  Produto produtoTv = Produto(nome: "Tv", preco: 1000.00);
  Produto produtoGame = Produto(nome: "Game", preco: 2000.00);

  print("\x1B[2J\x1B[0;0H");
  print("1================================================");
  print(produtoTv.nome);
  print(produtoTv.preco);
  print(produtoTv.getTaxa());
  print("2================================================");
  print(produtoGame.nome);
  print(produtoGame.preco);
  print(produtoGame.getTaxa());
  print("3================================================");
  /* final tx = produtoTv.getTaxa() + produtoGame.getTaxa(); */
  /* final preco = produtoTv.preco + produtoGame.preco; */
  /* print("Total: ${preco + tx}"); */

  //Usa o metodo com a palavra reservada "operator"
  //para que as instancias reconheçam os OPERADORES
  print("*Total: ${produtoTv + produtoGame}");
}
