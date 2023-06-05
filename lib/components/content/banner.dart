import 'package:flutter/material.dart';
import 'package:portfolio/components/content/build.animated.text.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/bg.jpeg',
            fit: BoxFit.cover,
          ),
          Container(color: AppColors.dark.withOpacity(0.66)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Discovery my Amazing \nArt Space!',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                          )
                      : Responsive.isMobile(context)
                          ? Theme.of(context).textTheme.headline6!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppColors.white,
                              )
                          : Theme.of(context).textTheme.headline5!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppColors.white,
                              ),
                ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding / 2),
                const BuildAnimatedText(),
                const SizedBox(height: defaultPadding),
                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: defaultPadding * 2,
                        vertical: defaultPadding,
                      ),
                      backgroundColor: AppColors.primary,
                    ),
                    child: const Text(
                      'EXPLORE NOW',
                      style: TextStyle(color: AppColors.dark),
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
