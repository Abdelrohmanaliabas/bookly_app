import 'package:bookly_app/Features/home/presentation/Views/widget/custom_list_viewVirtcal.dart';
import 'package:flutter/material.dart';

class FutureListView extends StatelessWidget {
  const FutureListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const CustomListImageView(),
            );
          },
        ),
      ),
    );
  }
}
