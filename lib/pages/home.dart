import 'package:flutter/material.dart';
import '../components/service_item.dart';
import '../main.dart';
import '../styles/homeStyles.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      body: Column(
        children: [
          Container(
            margin: AppStyles.containerMargin,
            child: const Text(
              "Каталог услуг",
              style: AppStyles.headingTextStyle,
            ),
          ),
          ListView.builder(
            itemCount: appData.services.length,
            padding: AppStyles.listViewPadding,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int serviceIndex) {
              return ServiceItem(serviceIndex: serviceIndex);
            },
          ),
        ],
      ),
    );
  }
}
