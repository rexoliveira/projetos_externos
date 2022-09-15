// ignore_for_file: public_member_api_docs, sort_constructors_first
//Typedef 🎯

//São apelidos para os tipos de entrada
typedef Items = List<String>;

typedef MapList =Map<String, List<String>>;

typedef Action = int Function(double calc);

class View {
  //SEM APELIDO
  /* final List<String> items;
  final Map<String, List<String>> mapList;
  final int Function(double calc) calculator; */

  //COM APELIDO
  final Items items;
  final MapList mapList;
  final Action calculator;

  View(this.items, this.mapList, this.calculator);
}

void main(List<String> args) {}
