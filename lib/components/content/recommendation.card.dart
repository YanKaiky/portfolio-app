import 'package:flutter/material.dart';
import 'package:portfolio/models/recommendations.model.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';

class RecommendationCard extends StatelessWidget {
  final RecommendationsModel recommendation;

  const RecommendationCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(defaultPadding),
      color: AppColors.secondary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    recommendation.image,
                  ),
                ),
              ),
              const SizedBox(width: defaultPadding / 2),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recommendation.name,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  Text(recommendation.source),
                ],
              ),
            ],
          ),
          const SizedBox(height: defaultPadding),
          Text(
            recommendation.text,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}
