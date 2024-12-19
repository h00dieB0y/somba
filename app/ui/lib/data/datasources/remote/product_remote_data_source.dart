import 'package:http/http.dart' as http;
import 'package:ui/data/models/product_item_model.dart';
import 'dart:convert';

class ProductRemoteDataSource {
  final http.Client client;

  ProductRemoteDataSource(this.client);

  Future<List<ProductItemModel>> getProducts() async {
    final response = await client.get(Uri.parse('http://localhost:8081/api/v1/products'));
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = json.decode(response.body);
      final List<dynamic> products = jsonResponse['data'];
      
      return products.map((product) => ProductItemModel.fromJson(product)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}