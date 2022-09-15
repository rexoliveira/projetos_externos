//private, alias, show/hide e part of / part "colored_letters" (Libraries)

//Colocando apelidos em libraries
//Com "show" pode ser selecionado quais implementações usar
import 'lib/c19-a-a-colored_letters.dart' as letters show transform, Cores;
//Com "hide" pode ser escondido o que NÃO se quer trabalhar da  libraries
import 'lib/c19-b-a-colored_letters.dart' as teste hide Part3;

void main(List<String> args) {
  letters.transform("value");
  letters.Cores;

  teste.Part1;
  // Part2;//Privado não pode ser usado
  // Part3;//Foi retirado do uso por HIDE
}
