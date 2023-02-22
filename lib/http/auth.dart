import 'package:ormoc_app/http/interceptor.dart';
import 'package:http/http.dart' as http;

class Auth {

  static Future login(username, password) async {
    var client = Interceptor(http.Client());
    var url = Uri.parse("https://example/login");

    var response = await client.post(url, body : { 'username' : username, 'password' : password });

    return response.body;
  }
}
