import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

getApi() async {
  try {
    var url = 'https://randomuser.me/api/?results=15';
    // var url = 'https://30546b70.ngrok.io/';
    // print(url);
    var response = await http.get(url);
    var body = convert.jsonDecode(response.body);
    // print(body);
    return body['results'];
  } catch (e) {}
}

getApiWithParams() async {
  try {
    var name = "zain";
    var url = 'https://30546b70.ngrok.io/?name=$name';
    print(url);
    var response = await http.get(url);
    var body = convert.jsonDecode(response.body);
    print(body);
    // return body['results'];
  } catch (e) {}
}

postApi() async {
  try {
    var data = {"name": 'zain', "age": "24"};
    var url = 'https://30546b70.ngrok.io/';
    print(url);
    var response = await http.post(url, body: data);
    var body = convert.jsonDecode(response.body);
    print(body);
    // return body['results'];
  } catch (e) {}
}

putApi() async {
  try {
    var data = {"name": 'zain', "age": "24"};
    var url = 'https://30546b70.ngrok.io/';
    print(url);
    var response = await http.put(url, body: data);
    var body = convert.jsonDecode(response.body);
    print(body);
    // return body['results'];
  } catch (e) {}
}

deleteApi() async {
  try {
    int id = 123423123;
    var url = 'https://30546b70.ngrok.io/?Id =$id ';
    print(url);
    var response = await http.delete(url);
    var body = convert.jsonDecode(response.body);
    print(body);
    // return body['results'];
  } catch (e) {}
}

