import 'dart:convert';

import 'package:http/http.dart' as http;

class Network {
  Network(this.url);
  final String url;

  Future getData() async {
    http.Response response = await http.get(url);
    String data = response.body;
    if (response.statusCode == 200) {
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
