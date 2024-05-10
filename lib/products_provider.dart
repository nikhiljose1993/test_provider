import 'package:flutter/material.dart';
import 'package:test_provider/models/products.dart';
import 'package:test_provider/web/api_service.dart';

class ProductProvider extends ChangeNotifier {
  List<Products>? plist;

  Future<void> fetch() async {
    plist = await ApiService().fetchData();
    notifyListeners();
  }
}
