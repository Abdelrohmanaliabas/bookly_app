import 'package:bookly_app/Features/home/presentation/Views/widget/best_seller_item_view.dart';
import 'package:bookly_app/Features/home/presentation/Views/widget/custom_appbar_detail_book.dart';
import 'package:bookly_app/Features/home/presentation/Views/widget/custom_list_viewVirtcal.dart';
import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/core/widget/custom_buttom_widget.dart';
import 'package:flutter/material.dart';

class BookDitailsViewBody extends StatelessWidget {
  const BookDitailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
        child: Column(
          children: [
            const CustomAppBarBookDetails(),
            SizedBox(
              height: width * 0.07,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.17),
              child: const CustomListImageView(),
            ),
            SizedBox(
              height: width * 0.02,
            ),
            const Text(
              'The Jungle Book',
              style: Styles.textStyle30,
            ),
            SizedBox(
              height: width * 0.015,
            ),
            const Text(
              'Rudyard Kipling',
              style: Styles.textStyle20,
            ),
            SizedBox(
              height: width * 0.012,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RateItem(),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            const BooksAction(),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Text(
                  'you can also like',
                  style:
                      Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            const SimillerListView(),
          ],
        ),
      ),
    );
  }
}

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButtom(
            backgroundColor: Colors.white,
            text: '19.33 \$',
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
          ),
        ),
        Expanded(
          child: CustomButtom(
            backgroundColor: Color(0xffEF8262),
            text: 'Free PreView',
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12)),
          ),
        ),
      ],
    );
  }
}

class SimillerListView extends StatelessWidget {
  const SimillerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.16,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CustomListImageView(),
          );
        },
      ),
    );
  }
}
