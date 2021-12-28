Future<void> main() async {
  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.take(5);

  final data = await stream.toList();
  print(data);
}

int callback(int value) {
  return (value + 1) * 2;
}
