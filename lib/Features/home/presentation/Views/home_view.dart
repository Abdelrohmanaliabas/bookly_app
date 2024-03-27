import 'package:bookly_app/Features/home/presentation/Views/widget/custom_app_bar.dart';
import 'package:bookly_app/assets.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
      ],
    );
  }
}
