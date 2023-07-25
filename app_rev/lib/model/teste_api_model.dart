class TesteApi {
  late String status;
  late String teste;

  TesteApi({required this.status, required this.teste});

  TesteApi.fromJson(Map<String, dynamic> json) {
    status = json['Status'].toString();
    teste = json['teste'].toString();
  }
}
