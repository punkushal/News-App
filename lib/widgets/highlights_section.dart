import 'package:flutter/material.dart';
import 'package:news_app/widgets/app_text.dart';

class HighlightsSection extends StatelessWidget {
  const HighlightsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (ctx, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 8,
                    children: [
                      //source name
                      AppText(text: 'finreport.co'),

                      //news title
                      AppText(
                        text: 'Stock market surges to all-time low',
                        fontWeight: FontWeight.bold,
                      ),

                      //news published time
                      AppText(text: '3h ago')
                    ],
                  ),
                  Container(
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              Divider(),
            ],
          );
        });
  }
}
