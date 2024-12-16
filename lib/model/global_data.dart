import "../pages/cart.dart";
import "../model/service.dart";
import "../model/cart_item.dart";

class GlobalData {
  List<Service> services = [
    Service("Проверка слуха", 1000, "3 день"),
    Service("Анализ крови (лучший)", 690, "1 день"),
    Service("Проверка зрения", 100, "1 день"),
    Service("Тест на короновирус ", 9999, "2 дня")
  ];

  List<CartItem> cartItems = [];
  CartPageState? cartState;

  GlobalData() {
    cartItems.addAll([
      CartItem(services[1], 1),
      CartItem(services[0], 1)
    ]);
  }
}
