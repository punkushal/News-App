import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app/widgets/app_text.dart';
import 'package:news_app/widgets/highlights_section.dart';
import 'package:news_app/widgets/section_heading.dart';
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
    final screenSize = MediaQuery.of(context).size;
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
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8,
                  children: [
                    AppText(
                        text:
                            DateFormat('EEEE, MMMM d').format(DateTime.now())),
                    SectionHeading(sectionHeading: 'Top Stories'),
                    SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      height: screenSize.height * 0.78,
                      child: TopStoriesSection(),
                    ),

                    SizedBox(
                      height: 12,
                    ),
                    //Highlights section
                    SectionHeading(sectionHeading: 'Highlights'),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: screenSize.height * 0.35,
                      child: HighlightsSection(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              label: 'for you'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.today_sharp,
              ),
              label: 'headline'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark_outline,
              ),
              label: 'following'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.star_purple500,
              ),
              label: 'sources'),
        ],
      ),
    );
  }
}
