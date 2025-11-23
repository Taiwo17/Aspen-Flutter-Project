import 'package:aspen/commons/styles/text_styles.dart';
import 'package:aspen/screens/explore/widgets/category_selector.dart';
import 'package:aspen/screens/explore/widgets/location_drop_down.dart';
import 'package:aspen/screens/explore/widgets/popular_section.dart';
import 'package:aspen/screens/explore/widgets/recommended_section.dart';
import 'package:aspen/screens/explore/widgets/search_functionality.dart';

import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final List<String> items = ['Aspen, USA', 'Aspen, CAN', 'Aspen, NIG'];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Explore', style: ASText.explorePageTextStyle),
                    Text('Aspen', style: ASText.exploreAspenTextStyle),
                  ],
                ),
                Column(
                  children: [
                    LocationDropDown(
                      items: items,
                      selectedValue: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                    ),
                    SizedBox(height: 24),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 24),
          SearchFunctionality(),
          SizedBox(height: 24),
          CategorySelector(),
          SizedBox(height: 24),
          PopularSection(),
          SizedBox(height: 24),
          RecommendedSection(),
          SizedBox(height: 200),
        ],
      ),
    );
  }
}

