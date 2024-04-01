import 'package:bookly_app/Features/home/presentation/Views/widget/best_seller_item_view.dart';
import 'package:bookly_app/Features/home/presentation/Views/widget/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/Views/widget/custom_list_viewVirtcal.dart';
import 'package:bookly_app/Features/home/presentation/Views/widget/futurelistHori.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utlis/assets.dart';
import 'package:bookly_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 40,
          ),
          FutureListView(),
          SizedBox(
            height: 28,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Row(
              children: [
                Text(
                  'Best Seller',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
