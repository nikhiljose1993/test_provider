import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:test_provider/models/RespMain.dart';
import 'package:test_provider/models/Products.dart';

class ApiService {
  Future<List<Products>?> fetchData() async {
    var response = await http.get(
      Uri.parse('https://dummyjson.com/products'),
    );
    var jsonn = jsonDecode(response.body);
    var res = RespMain.fromJson(jsonn);
    var list = res.products;
    return list;
  }
}
