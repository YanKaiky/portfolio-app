import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/utils/constants.dart';

class KnowledgeText extends StatelessWidget {
  final String value;

  const KnowledgeText({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/check.svg'),
          const SizedBox(width: defaultPadding / 2),
          Text(value)
        ],
      ),
    );
  }
}
