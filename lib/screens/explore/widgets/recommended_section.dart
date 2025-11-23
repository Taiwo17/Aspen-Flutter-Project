import 'package:aspen/screens/explore/widgets/recommended_card.dart';
import 'package:flutter/material.dart';

class RecommendedSection extends StatelessWidget {
  const RecommendedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Recommended",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),

        const SizedBox(height: 16),

        SizedBox(
          height: 220,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            children: const [
              RecommendedCard(
                image: "assets/images/recommended.png",
                title: "Explore Aspen",
                badge: "4N/5D",
              ),
              SizedBox(width: 20),
              RecommendedCard(
                image: "assets/images/recommended.png",
                title: "Luxurious Aspen",
                badge: "2N/3D",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
