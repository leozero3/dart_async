// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

Future<void> main() async {
  final streamController = StreamController<Pessoa>.broadcast();

  final inStream = streamController.sink; // entrada
  final outStream = streamController.stream; //saida

  outStream
  .listen((pessoa) {
    print('Seja bem vindo ${pessoa.nome}');

    //recebe todos os valores,
  });

  var numeros = List.generate(20, (index) => index);

  for (var numero in numeros) {
    print('Enviando numero: $numero');
    inStream.add(Pessoa(nome: 'Leo $numero')); // saida
    // streamController.add(numero); >>>alternativa para -- final inStream = streamController.sink;
    // await Future.delayed(Duration(milliseconds: 500));

    // exibe somente os valores selecionados
  }

  print('Fim Stream Controller');
  await streamController.close(); // >>> fechamento da STREAM
}

class Pessoa {
  String nome;
  Pessoa({
    required this.nome,
  });
}
