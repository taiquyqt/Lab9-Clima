import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    final Uri uri = Uri.parse(url); // Convert the URL to a Uri object
    http.Response response = await http.get(uri);

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print('Failed to load data with status code: ${response.statusCode}');
      return null; // Return null if there's an error
    }
  }
}
