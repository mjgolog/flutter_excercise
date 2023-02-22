import 'package:http/http.dart' as http;

class Interceptor extends http.BaseClient {
  final http.Client _inner;
  Interceptor(this._inner);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    request.headers['Authorization'] = 'Bearer your_token_here';
    final response = await _inner.send(request);

    if (response.statusCode == 401) {
      // handle unauthorized error
    } else if (response.statusCode == 404) {
      // handle not found error
    } else if (response.statusCode >= 400) {
      // handle other client errors
    } else if (response.statusCode >= 500) {
      // handle server errors
    }

    return response;
  }
}

