import 'package:flutter/material.dart';

import 'package:portfolio/components/content/banner.dart';
import 'package:portfolio/components/content/high.lights.info.dart';
import 'package:portfolio/components/content/my.projects.dart';
import 'package:portfolio/components/content/recommendations.dart';
import 'package:portfolio/src/screens/home/content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ContentScreen(
      chidren: [
        HomeBanner(),
        HighLightsInfo(),
        MyProjects(),
        Recommendations(),
      ],
    );
  }
}
