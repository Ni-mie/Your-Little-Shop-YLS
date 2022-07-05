import 'package:http/http.dart' as http;
import 'package:your_little_shop/Models/fetch_Products.dart';

class ApiService {
  static var client = http.Client();

  // ignore: body_might_complete_normally_nullable
  static Future<List<ProductModel>?> fetchProducts() async {
    final response =
        await client.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    }
  }
}
