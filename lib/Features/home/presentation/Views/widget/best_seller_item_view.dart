import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utlis/assets.dart';
import 'package:bookly_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/bookDetailsView');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SizedBox(
          height: 125,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.5 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(AssetsData.testImage),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        'Harry Potter And the Golet on Fire',
                        style: Styles.textStyle20
                            .copyWith(fontFamily: kGtSectraFine),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Text(
                      'J.K. Rowling',
                      style: Styles.textStyle14,
                    ),
                    Row(
                      children: [
                        Text(
                          '19.33\$',
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        const RateItem(),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RateItem extends StatelessWidget {
  const RateItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          '(2654)',
          style: Styles.textStyle14,
        )
      ],
    );
  }
}
