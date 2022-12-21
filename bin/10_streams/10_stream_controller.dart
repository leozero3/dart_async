import 'dart:async';

Future<void> main() async {
  final streamController = StreamController<int>.broadcast();

  final inStream = streamController.sink; // entrada
  final outStream = streamController.stream; //saida

  outStream
      .skip(1)
      .where((numero) => numero % 2 == 0)
      .map((numb) => 'O valor PAR enviado é $numb')
      .listen((strConvertida) {
    print('String convertida');
    print(strConvertida);

    //recebe todos os valores, 
  });

  var numeros = List.generate(20, (index) => index);

  for (var numero in numeros) {
    print('Enviando numero: $numero');
    inStream.add(numero); // saida
    // streamController.add(numero); >>>alternativa para -- final inStream = streamController.sink;
    await Future.delayed(Duration(milliseconds: 500));

    // exibe somente os valores selecionados
  }

  print('Fim Stream Controller');
  await streamController.close(); // >>> fechamento da STREAM
}
