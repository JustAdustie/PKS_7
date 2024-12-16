import 'package:flutter/material.dart';
import '../components/profile_menu_item.dart';
import '../styles/profileStyles.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: AppStyles.containerMarginTop92Left27,
            child: const Text(
              "Быков Александр",
              style: AppStyles.headingTextStyle,
            ),
          ),
          Container(
            margin: AppStyles.containerMarginTop22Left27,
            child: const Text(
              "+88005553535",
              style: AppStyles.subHeadingTextStyle,
            ),
          ),
          Container(
            margin: AppStyles.containerMarginTop16Left27,
            child: const Text(
              "example@mail.com",
              style: AppStyles.subHeadingTextStyle,
            ),
          ),
          Container(
            margin: AppStyles.profileMenuSpacing,
          ),
          Container(
            padding: AppStyles.profileMenuPadding,
            child: Column(
              children: [
                ProfileMenuItem(label: "Мои заказы", iconAssetPath: "assets/icons/order.png"),
                ProfileMenuItem(label: "Медицинские карты", iconAssetPath: "assets/icons/cards.png"),
                ProfileMenuItem(label: "Мои адреса", iconAssetPath: "assets/icons/adress.png"),
                ProfileMenuItem(label: "Настройки", iconAssetPath: "assets/icons/settings.png"),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ProfileBottomMenuItem(label: "Ответы на вопросы"),
                      ProfileBottomMenuItem(label: "Политика конфиденциальности"),
                      ProfileBottomMenuItem(label: "Пользовательское соглашение"),
                      ProfileBottomMenuItem(label: "Выход"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileBottomMenuItem extends StatelessWidget {
  ProfileBottomMenuItem({
    super.key,
    required this.label,
    this.color,
  });

  final String label;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: color ?? const Color(0xFF939396),
        textStyle: const TextStyle(
          fontFamily: "Montserrat",
          fontSize: 15,
          height: 20 / 15,
          letterSpacing: 0,
        ),
      ),
      onPressed: () {},
      child: Text(label),
    );
  }
}
