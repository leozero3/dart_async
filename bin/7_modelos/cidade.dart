import 'dart:convert';

class Cidade {
  final String cep;
  final String logradouro;
  final String complemento;
  final String bairro;
  final String localidade;
  final String uf;
  final String ddd;

  Cidade({
    required this.cep,
    required this.logradouro,
    required this.complemento,
    required this.bairro,
    required this.localidade,
    required this.uf,
    required this.ddd,
  });

  factory Cidade.fromMap(Map<String, dynamic> map){
    return Cidade(
      cep: map['cep'] ?? '',
      logradouro: map['logradouro'] ?? '',
      complemento: map['complemento'] ?? '',
      bairro: map['bairro'] ?? '',
      localidade: map['localidade'] ?? '',
      uf: map['uf'] ?? '',
      ddd: map['ddd'] ?? '',
    );
  }

  factory Cidade.fromJson(String source){
    var jsonMap = jsonDecode(source);
    return Cidade.fromMap(jsonMap);
  }

  Map<String,dynamic> toMap(){
    return {
      "cep": cep,
      "logradouro": logradouro,
      "complemento": complemento,
      "bairro": bairro,
      "localidade": localidade,
      "uf": uf,
      "ddd": ddd,
    };
  }

  String toJson(){
    return jsonEncode(toMap());
  }

  @override
  String toString() {
    return 'Cidade{cep: $cep, logradouro: $logradouro, complemento: $complemento, bairro: $bairro, localidade: $localidade, uf: $uf, ddd: $ddd}';
  }
}


// "cep": "01311-300",
// "logradouro": "Avenida Paulista",
// "complemento": "de 1867 ao fim - lado ímpar",
// "bairro": "Bela Vista",
// "localidade": "São Paulo",
// "uf": "SP",
// "ibge": "3550308",
// "gia": "1004",
// "ddd": "11",
// "
// siafi":
// "
// 7107
// "