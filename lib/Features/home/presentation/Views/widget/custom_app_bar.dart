import 'package:bookly_app/core/utlis/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 40),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 24,
          ),
          Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push('/SearchView');
              },
              icon: Icon(
                Icons.search_rounded,
                size: 24,
              ))
        ],
      ),
    );
  }
}
