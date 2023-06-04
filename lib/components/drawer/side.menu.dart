// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:portfolio/components/drawer/area.info.dart';
import 'package:portfolio/components/drawer/coding.dart';
import 'package:portfolio/components/drawer/knowledges.dart';
import 'package:portfolio/components/drawer/my.info.dart';
import 'package:portfolio/components/drawer/skills.dart';
import 'package:portfolio/utils/calculate.age.dart';
import 'package:portfolio/utils/constants.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final birthday = DateTime(2002, 12, 22);
    final today = DateTime.now();
    final age = calculateAge(birthday, today);

    return Drawer(
      child: Column(
        children: [
          const MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  const AreaInfo(title: 'Residence:', value: 'Brazil'),
                  const AreaInfo(title: 'Location:', value: 'Blumenau, SC'),
                  AreaInfo(
                    title: 'Age:',
                    value: age.toString(),
                  ),
                  const Skills(),
                  const Knowledges(),
                  const SizedBox(height: defaultPadding),
                  const Coding(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
