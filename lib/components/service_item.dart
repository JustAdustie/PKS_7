import 'package:flutter/material.dart';
import '../main.dart';
import '../model/cart_item.dart';
import '../styles/serviceitemStyles.dart';

class ServiceItem extends StatelessWidget {
  ServiceItem({
    super.key,
    required this.serviceIndex,
  });

  final int serviceIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppStyles.serviceItemMargin,
      padding: AppStyles.serviceItemPadding,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE0E0E0), width: 1.0),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        children: [
          Text(
            appData.services[serviceIndex].name,
            style: AppStyles.serviceItemTextStyle,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    appData.services[serviceIndex].daysIntervalText,
                    style: AppStyles.serviceItemDaysTextStyle,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "${appData.services[serviceIndex].price.toString()} ₽",
                    style: AppStyles.serviceItemPriceTextStyle,
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: ElevatedButton(
                  onPressed: () {
                    appData.cartItems.add(
                      CartItem(appData.services[serviceIndex], 1),
                    );
                    if (appData.cartState != null) {
                      appData.cartState!.forceUpdateState();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1A6FEE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: AppStyles.buttonPadding,
                  ),
                  child: const Text(
                    "Добавить",
                    style: AppStyles.buttonTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
