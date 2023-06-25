import 'package:flutter/material.dart';
import 'package:portfolio/components/content/recommendation.card.dart';
import 'package:portfolio/models/recommendations.model.dart';
import 'package:portfolio/repositories/recommendations.repository.dart';
import 'package:portfolio/utils/constants.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<RecommendationsModel> recommendationsRepository =
        RecommendationsRepository().getRecommendations();

    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recommendations',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: defaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                recommendationsRepository.length,
                (i) {
                  return Padding(
                    padding: const EdgeInsets.only(right: defaultPadding),
                    child: RecommendationCard(
                      recommendation: recommendationsRepository[i],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
