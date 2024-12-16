import 'package:flutter/material.dart';
import '../styles/profilemenuStyles.dart';

class ProfileMenuItem extends StatelessWidget {
  ProfileMenuItem({
    super.key,
    required this.iconAssetPath,
    required this.label,
  });

  final String iconAssetPath;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      width: double.infinity,
      child: Row(
        children: [
          Image.asset(iconAssetPath),
          AppStyles.profileMenuItemSpacing,
          Text(
            label,
            style: AppStyles.profileMenuItemTextStyle,
          ),
        ],
      ),
    );
  }
}
