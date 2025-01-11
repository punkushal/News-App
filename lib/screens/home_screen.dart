import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app/widgets/app_text.dart';
import 'package:news_app/widgets/top_stories_section.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText(
          text: 'For you',
          fontWeight: FontWeight.bold,
        ),
        leading: Icon(
          Icons.menu,
        ),
        actions: [
          Icon(Icons.search),
          Container(
            width: 42,
            height: 42,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(
              Icons.person_2_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: SizedBox(
            height: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                AppText(
                    text: DateFormat('EEEE, MMMM d').format(DateTime.now())),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(
                      text: 'Top Stories',
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                    AppText(
                      text: 'See all',
                      color: Colors.grey,
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Expanded(
                  child: TopStoriesSection(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
