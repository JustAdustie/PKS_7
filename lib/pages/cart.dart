import 'package:flutter/material.dart';
import '../components/cart_item_box.dart';
import '../main.dart';
import '../styles/cartStyles.dart';  // Импортируем файл стилей

class CartPage extends StatefulWidget {
  CartPage({super.key});

  @override
  State<CartPage> createState() => CartPageState();
}

class CartPageState extends State<CartPage> {
  @override
  void initState() {
    super.initState();
    appData.cartState = this;
  }

  void forceUpdateState() {
    if (mounted) {
      setState(() {});
    }
  }

  int calcTotalAmount() {
    int totalAmount = 0;
    for (final item in appData.cartItems) {
      totalAmount += item.patientCount * item.item.price;
    }
    return totalAmount;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: AppStyles.containerMargin,  // Используем стиль
                child: const Text(
                  "Корзина",
                  style: AppStyles.headingTextStyle,  // Используем стиль
                ),
              ),
              SizedBox(
                height: 360,
                child: ListView.builder(
                  itemCount: appData.cartItems.length,
                  padding: AppStyles.listViewPadding,  // Используем стиль
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int itemIndex) {
                    return CartItemBox(
                      cartIndex: itemIndex,
                    );
                  },
                ),
              ),
              Container(
                margin: AppStyles.rowMargin,  // Используем стиль
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Сумма",
                      style: AppStyles.labelTextStyle,  // Используем стиль
                    ),
                    Text(
                      "${calcTotalAmount()} ₽",
                      style: AppStyles.labelTextStyle,  // Используем стиль
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 30),
              child: ElevatedButton(
                onPressed: () {},
                style: AppStyles.elevatedButtonStyle,
                child: const Text(
                  "Оформить заказ",
                  style: AppStyles.buttonTextStyle,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
