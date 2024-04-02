import 'package:bookly_app/Features/home/presentation/Views/widget/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/Views/widget/futurelistHori.dart';
import 'package:bookly_app/Features/home/presentation/Views/widget/list_best_seller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
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
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: BestSellerListView(),
          )
        ],
      ),
    );
  }
}
