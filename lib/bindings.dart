import 'package:get/get.dart';
import 'package:your_little_shop/Controllers/product_controller.dart';

class ProductBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductController());
  }
}
