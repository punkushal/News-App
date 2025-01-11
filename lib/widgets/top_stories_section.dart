import 'package:flutter/material.dart';
import 'package:news_app/widgets/app_text.dart';

class TopStoriesSection extends StatelessWidget {
  const TopStoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (ctx, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              Placeholder(),
              AppText(text: 'sometechjournal.co'),
              AppText(
                text:
                    'Tech giant announces major investment in renewable enery',
                fontWeight: FontWeight.bold,
              ),
              AppText(text: '3h ago'),
              SizedBox(
                height: 8,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 4,
                  children: List.generate(
                    5,
                    (indexDot) {
                      return Container(
                        width: index == indexDot ? 22 : 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      );
                    },
                  ))
            ],
          );
        });
  }
}
