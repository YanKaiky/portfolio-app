import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: AppColors.bgcolorSecondary,
        child: Column(
          children: [
            const Spacer(flex: 2),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                'assets/images/myself.png',
              ),
            ),
            const Spacer(),
            Text(
              "Yan Kaiky",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const Text(
              "FullStack & Mobile Developer\n (47) 99955-6723",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
