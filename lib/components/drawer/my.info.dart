import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/components/drawer/social.medias.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.7,
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
            const Spacer(),
            Column(
              children: [
                const SizedBox(height: defaultPadding / 2),
                TextButton(
                  onPressed: () {},
                  child: FittedBox(
                    child: Row(
                      children: [
                        Text(
                          'DOWNLOAD CV',
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1!.color,
                          ),
                        ),
                        const SizedBox(width: defaultPadding / 2),
                        SvgPicture.asset('assets/icons/download.svg')
                      ],
                    ),
                  ),
                ),
                const SocialMedias(),
              ],
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
