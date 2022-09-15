//Enumerated types (Classes)
//Quando for uma palavra composta usar como o ex "redDark"
enum Color {
  red,
  redDark,
  blue,
  white,
}
//A segunda palavra começa com a letra maiscula
const defaultColor = Color.red;

void main(List<String> args) {
  //Color.values.forEach(print);
  //print(Color.blue.name);
  //print(Color.blue.index);
  final corFavorita = Color.red;
  if (corFavorita == Color.red) {
    print('Sua cor favorita é ${corFavorita.name}');
  }
}
