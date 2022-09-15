// ignore_for_file: public_member_api_docs, sort_constructors_first
//Typedef 🎯

//São apelidos para os tipos de entrada
typedef Items<I> = List<I>;

typedef MapList<I> = Map<I, List<I>>;

//R -retorn / P - parametros 
typedef Action<R,P> = R Function(P calc);

class Item {}

class View {
  //COM APELIDO
  final Items<Item> items;
  final MapList<Item> mapList;
  final Action<double, int> calculator;
  final Action<bool, double> calculator2;

  View(this.items, this.mapList, this.calculator, this.calculator2);
}


