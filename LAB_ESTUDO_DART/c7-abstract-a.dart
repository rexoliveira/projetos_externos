//Abstract Class - Dúvida da Instância de uma classe Abstrata (Exception) 🤔
//Classe abstract NÃO pode ser instanciada, somente seu subproduto
abstract class MeuProduto {
  final double preco;
  MeuProduto(this.preco);

  void calcularPreco() {
    print("Implementação... $preco");
    log('Produto');
  }
  
  //Metodo abstract
  void log(String mensagem) {}
}

void main(List<String> args) {
  //Não é permitido criar uma instancia de CLASSE abstrata
  /* MeuProduto(); */
}
