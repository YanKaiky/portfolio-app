// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';

class AreaInfo extends StatelessWidget {
  final String title;
  final String value;

  const AreaInfo({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(color: AppColors.white)),
          Text(value),
        ],
      ),
    );
  }
}
