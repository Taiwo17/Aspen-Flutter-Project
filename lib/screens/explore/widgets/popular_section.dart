import 'package:aspen/screens/explore/widgets/popular_card.dart';
import 'package:flutter/material.dart';

class PopularSection extends StatelessWidget {
  const PopularSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ---- Header ----
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Popular",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "See all",
                  style: TextStyle(
                    color: Colors.blue[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),

        // ---- Horizontal cards ----
        SizedBox(
          height: 280,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            children: const [
              PopularCard(
                image: "assets/images/hotel1.png",
                title: "Alley Palace",
                rating: "4.1",
              ),
              SizedBox(width: 20),
              PopularCard(
                image: "assets/images/hotel.png",
                title: "Coeurdes Alpes",
                rating: "4.5",
              ),
              SizedBox(width: 20),
              PopularCard(
                image: "assets/images/hotel2.png",
                title: "Coeurdes Alpes",
                rating: "4.5",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
