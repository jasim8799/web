import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

class NetworkHandler {
  String baseurl = "https://bloguser.herokuapp.com/";
  //var url = Uri.http("https://bloguser.herokuapp.com/","");
  var log = Logger();
  Future<dynamic> get(String url) async {
    url = formater(url);
    // /user/register
    var response = await http.get(Uri.http(url));
    log.i(response.body);
    log.i(response.statusCode);
  }

  Future<dynamic> post(String url, Map<String, String> body) async {
    url = formater(url);
    var response = await http.post(Uri.http(url), body: body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      log.i(response.body);
      return response;
    }
    log.d(response.body);
    log.d(response.statusCode);
  }

  String formater(String url) {
    return baseurl + url;
  }
}
