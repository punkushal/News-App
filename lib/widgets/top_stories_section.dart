import 'package:flutter/material.dart';
import 'package:news_app/providers/news_provider.dart';
import 'package:news_app/widgets/app_text.dart';
import 'package:provider/provider.dart';

class TopStoriesSection extends StatefulWidget {
  const TopStoriesSection({super.key});

  @override
  State<TopStoriesSection> createState() => _TopStoriesSectionState();
}

class _TopStoriesSectionState extends State<TopStoriesSection> {
  @override
  void initState() {
    Provider.of<NewsProvider>(context, listen: false).getTopStoriesNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<NewsProvider>(
      builder: (context, provider, child) {
        if (provider.allArticles.isEmpty) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (ctx, index) {
              final article = provider.allArticles[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  Placeholder(),
                  AppText(
                    text: article.source!.name!,
                    color: Colors.grey,
                  ),
                  AppText(
                    text: article.title!,
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
      },
    );
  }
}
