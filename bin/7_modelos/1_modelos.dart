import 'package:http/http.dart';
import 'dart:convert';

import 'cidade.dart';

void main() {
  buscarCep();
}

Future<void> buscarCep() async {
  var url = 'https://viacep.com.br/ws/01001000/json/';

  var response = await get(Uri.parse(url));

  if (response.statusCode == 200) {
    // var responseData = jsonDecode(response.body);
    // if (responseData is Map) {
    //   print(responseData['cep']);
    //   print(responseData['logradouro']);
    //   print(responseData['localidade']);

    var cidade = Cidade.fromJson(response.body);
    print(cidade);
    print(cidade.cep);
    print(cidade.ddd);
    print(cidade.toMap());
    print(cidade.toJson());
    print(cidade.toString());
  }
}
