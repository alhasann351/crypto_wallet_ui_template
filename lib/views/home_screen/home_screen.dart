import 'package:crypto_wallet_ui_template/views/home_screen/widgets/home_screen_appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [HomeScreenAppbar()],
    );
  }
}
