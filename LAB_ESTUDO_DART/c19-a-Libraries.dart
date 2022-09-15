//Entendendo de vez...library, import 🥳️ (Libraries)
//=============================================================
/* Melhor maneira de estudar por pacote à pacote em :
https://api.dart.dev/stable/2.18.1/index.html */
//É conjunto de funções,metodos, classes e tudo que uma liguagem
//permite criar para reaproveitar códigos;
//=============================================================
// Um tour pelas principais bibliotecas
//=============================================================
// [dart:core] - números, coleções, strings e muito mais
// Imprimindo no console
// Números
// Strings e expressões regulares
// Coleções
// URIs
// Datas e horários
// Classes de utilidade
// Exceções
// Referências e finalizadores fracos
//=============================================================
// [dart:async] - programação assíncrona
// Futuro
// Fluxo
// Mais Informações
//=============================================================
// [dart:math] - matemática e aleatória
// Trigonometria
// Máximo e mínimo
// Constantes matemáticas
// Números aleatórios
// Mais Informações
//=============================================================
// [dart:convert] - decodificação e codificação JSON, UTF-8 e mais
// Decodificação e codificação JSON
// Decodificação e codificação de caracteres UTF-8
// Outras funcionalidades
//=============================================================
// [dart:html] - aplicativos baseados em navegador
// Manipulando o DOM
// Usando recursos HTTP com HttpRequest
// Enviando e recebendo dados em tempo real com WebSockets
// Mais Informações
//=============================================================
// [dart:io] - E/S para servidores e aplicativos de linha de comando
// Arquivos e diretórios
// Clientes e servidores HTTP

//Desenvolvendo uma Biblioteca "colored_letters" (Libraries) 💎
import 'lib/c19-a-a-colored_letters.dart';

void main(List<String> args) {
  //Consegue tirar e colar cores
  //Pode mudar as posições das cores
  /* transform("Rodrigo Alexandre de Oliveira", [
    Cores.amarelo,
    Cores.verde,
  ]); */
  //Tanto tem como definir cores como deixar a cor padrão
  transform("Rodrigo Alexandre de Oliveira");
}
