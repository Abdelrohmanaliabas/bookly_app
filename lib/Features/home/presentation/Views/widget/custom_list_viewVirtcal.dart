import 'package:bookly_app/core/utlis/assets.dart';
import 'package:flutter/material.dart';

class CustomListImageView extends StatelessWidget {
  const CustomListImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.4 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(
                fit: BoxFit.fill, image: AssetImage(AssetsData.testImage))),
      ),
    );
  }
}
