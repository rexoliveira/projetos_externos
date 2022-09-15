//Não utilize String para concatenar seus valores 😢 (StringBuffer)
//StringBuffer - uma classe para concatenar Strings de uma forma eficiente

void main(List<String> args) {
  final listaIdade = [15, 22, 34];
  final listaNome = ["Pedro", "Tiago", "Felipe"];

  StringBuffer resultado = StringBuffer();

  for (var i = 0; i < listaIdade.length; i++) {
    //write - concatena strings
    //Pode chamar mais de uma vez o "write"
    resultado.write('Nome: ${listaNome[i]} Idade: ${listaIdade[i]}\n');
  }
  //Retorna um toString
  print(resultado);

  //Concatena itens dentro de uma lista
  print(listaNome);
  print(listaNome.join(""));
}
