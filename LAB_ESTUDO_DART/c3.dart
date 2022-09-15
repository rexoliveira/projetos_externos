// Variáveis de instância (Classes)

class Cliente {
  //late - assume-se o compromisso de iniciar a varivel posteriormente
  late String nome;
  //final -precisa ser inicializado pelo menos uma vez
  /* final String email = ""; */
  late final String email;

  /* Cliente(
     this.nome,
     this.email,
  );
 */

}

void main(List<String> args) {
  var cliente = Cliente();

  //Não inicializou gerou um erro
  /* cliente.nome = "Rodrigo"; */
  cliente.email = "rodrigo@gmail.com";
  print("\x1B[2J\x1B[0;0H");

  try {
    print(cliente.nome);
  } catch (e) {
    print("Erro: $e");
  }
  print(cliente.email);
}
