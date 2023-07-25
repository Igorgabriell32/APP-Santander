import 'dart:convert';

import 'package:app_rev/model/teste_api_model.dart';
import 'package:http/http.dart' as http;

Future<List<TesteApi>?> getApi() async {
  try {
    final response = await http.get(Uri.parse('http://127.0.0.1:8000/login'));

    final json = jsonDecode(response.body);

    return List<TesteApi>.from(json.map((elements) {
      return TesteApi.fromJson(elements);
    }));
  } catch (e) {
    print('erro na requisição:  $e');
  }
}
