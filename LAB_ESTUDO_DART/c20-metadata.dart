//Conhecendo os metadados (Metadata)


import 'lib/c20-a-a.dart';

class Produto {
  @Deprecated('use o metodo calcular()')
  //ou  @deprecated
  void calcularValor() {}
}

//Pode ser usado um libraries como ANOTAÇÂO - METADATA
@Todo("titulo", "descricao")
class TV extends Produto {
  @override
  void calcularValor() {
    super.calcularValor();
  }
}

void main(List<String> args) {
  
  TV().calcularValor();
}
