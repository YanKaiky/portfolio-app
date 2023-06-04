// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:portfolio/utils/colors.dart';

class FlutterCodedText extends StatelessWidget {
  final bool? last;

  const FlutterCodedText({
    Key? key,
    this.last = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: last == false ? '<' : '</',
        children: const [
          TextSpan(
            text: 'flutter',
            style: TextStyle(color: AppColors.primary),
          ),
          TextSpan(text: '>'),
        ],
      ),
    );
  }
}
