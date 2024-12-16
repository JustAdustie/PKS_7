import '../model/service.dart';

class CartItem {
  CartItem(this.item, this.patientCount);
  Service item;
  int patientCount = 1;
}