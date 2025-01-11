import 'package:flutter/material.dart';
import 'package:news_app/widgets/app_text.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({super.key, required this.sectionHeading});
  final String sectionHeading;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppText(
          text: sectionHeading,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        AppText(
          text: 'See all',
          color: Colors.grey,
        )
      ],
    );
  }
}
