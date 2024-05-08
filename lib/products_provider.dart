import 'package:flutter/material.dart';
import 'package:test_provider/models/Products.dart';
import 'package:test_provider/web/api_service.dart';

class ProductProvider extends ChangeNotifier {
  List<Products>? plist;

  ApiService apiService = ApiService();

  Future<void> fetch() async {
    plist = await apiService.fetchData();
    notifyListeners();
  }
}
