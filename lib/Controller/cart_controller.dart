import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:my_cv_mobile_app/screens/state_management/state_mgmt_screen.dart';

class CartController extends GetxController {
  List<Cart> carts = [];

  void addToCart(Cart cart) async {
    if (checkAlreadyItemOnCart(cart)) {
      return;
    }
    carts.add(cart);
    print("Item added to cart: ${cart.id}");
    update();
  }

  bool checkAlreadyItemOnCart(Cart cart) {
    for (var element in carts) {
      if (element.id == cart.id) {
        return true;
      }
    }
    return false;
  }

  //delete cart
  void deleteCart(Cart cart) {
    carts.remove(cart);
    update();
  }

  dynamic getTotalPrice() {
    var total = 0;
    for (var element in carts) {
      total += element.data.price ?? 0;
      // total = total + (element.data.price ?? 0);
    }
    return total;
  }

  double getDiscountedPrice() {
    double total = 0.0;
    for (var element in carts) {
      total += element.data.price ?? 0;
      // total = total + (element.data.price ?? 0);
    }
    total *= 0.12;
    return total;
  }

  double getGrandTotal() {
    return getTotalPrice() - getDiscountedPrice();
  }

  void clearAll() {
    carts.clear();
    update();
  }
}
