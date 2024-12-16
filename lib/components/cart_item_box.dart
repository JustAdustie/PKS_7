import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../main.dart';
import '../styles/cartitemStyles.dart';

class CartItemBox extends StatefulWidget {
  CartItemBox({super.key, required this.cartIndex});

  final int cartIndex;

  @override
  State<CartItemBox> createState() => _CartItemBoxState();
}

class _CartItemBoxState extends State<CartItemBox> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: AppStyles.boxDecoration,
          margin: AppStyles.containerMarginBottom16,
          child: Column(
            children: [
              Container(
                margin: AppStyles.itemNameMargin,
                child: Text(
                  appData.cartItems[widget.cartIndex].item.name,
                  style: AppStyles.itemNameTextStyle,
                ),
              ),
              Container(
                margin: AppStyles.rowMargin,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 4),
                        Text(
                          "${appData.cartItems[widget.cartIndex].item.price.toString()} ₽",
                          style: AppStyles.priceTextStyle,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "${appData.cartItems[widget.cartIndex].patientCount.toString()} пациент",
                          style: AppStyles.patientCountTextStyle,
                        ),
                        const SizedBox(width: 16),
                        Container(
                          padding: EdgeInsets.zero,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF5F5F9),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 32,
                                height: 32,
                                child: IconButton(
                                  padding: AppStyles.iconButtonPadding,
                                  onPressed: () {
                                    if (appData.cartItems[widget.cartIndex].patientCount > 1) {
                                      setState(() {
                                        appData.cartItems[widget.cartIndex].patientCount -= 1;
                                      });
                                      appData.cartState!.forceUpdateState();
                                    }
                                  },
                                  icon: SvgPicture.asset(
                                    appData.cartItems[widget.cartIndex].patientCount > 1
                                        ? "assets/icons/remove_enabled.svg"
                                        : "assets/icons/remove_disabled.svg",
                                  ),
                                ),
                              ),
                              Container(
                                color: const Color(0xFFEBEBEB),
                                width: 1,
                                height: 16,
                              ),
                              SizedBox(
                                width: 32,
                                height: 32,
                                child: IconButton(
                                  padding: AppStyles.iconButtonPadding,
                                  onPressed: () {
                                    setState(() {
                                      appData.cartItems[widget.cartIndex].patientCount += 1;
                                    });
                                    appData.cartState!.forceUpdateState();
                                  },
                                  icon: SvgPicture.asset("assets/icons/add_enabled.svg"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            margin: const EdgeInsets.all(16),
            width: 20,
            height: 20,
            child: IconButton(
              padding: AppStyles.iconButtonPadding,
              onPressed: () {
                appData.cartItems.removeAt(widget.cartIndex);
                if (appData.cartState != null) {
                  appData.cartState!.forceUpdateState();
                }
              },
              icon: SvgPicture.asset("assets/icons/delete.svg"),
            ),
          ),
        ),
      ],
    );
  }
}
