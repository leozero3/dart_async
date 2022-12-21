Future<void> main() async {
  print('Inicio');
  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.asBroadcastStream();

  stream = stream.take(10);
  stream.listen((numero) {
    print('Listen 1 value : $numero');
  });

  stream.listen((numero) {
    print('Listen 2 value : $numero');
  });

  print('FIM!!!');
}

int callback(int value) {
  print('CallBack valor que chegou é o $value');
  return (value + 1) * 2;
  
}
