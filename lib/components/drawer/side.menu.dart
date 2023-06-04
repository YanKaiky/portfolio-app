import 'package:flutter/material.dart';
import 'package:portfolio/components/drawer/area.info.dart';
import 'package:portfolio/components/drawer/coding.dart';
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
                  const AreaInfo(title: 'City:', value: 'Blumenau'),
                  const AreaInfo(title: 'State:', value: 'SC'),
                  const AreaInfo(title: 'Contry:', value: 'Brazil'),
                  AreaInfo(
                    title: 'Age:',
                    value: age.toString(),
                  ),
                  const Skills(),
                  const SizedBox(height: defaultPadding),
                  const Coding(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
