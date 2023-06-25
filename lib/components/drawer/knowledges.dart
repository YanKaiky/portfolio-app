import 'package:flutter/material.dart';
import 'package:portfolio/components/drawer/knowledge.text.dart';
import 'package:portfolio/utils/constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: defaultPadding,
          ),
          child: Text(
            'Knowledges',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const KnowledgeText(value: 'ReactJS, JavaScript'),
        const KnowledgeText(value: 'ReactJS, TypeScript'),
        const KnowledgeText(value: 'NodeJS, AdonisJS'),
        const KnowledgeText(value: 'NodeJS, NestJS'),
        const KnowledgeText(value: 'NodeJS, Express'),
        const KnowledgeText(value: 'Flutter, Dart'),
        const KnowledgeText(
          value: 'DigitalOcean, Droplets, Spaces',
        ),
        const KnowledgeText(value: 'AWS, SES, S3, EC2'),
        const KnowledgeText(value: 'GIT, GitHub, GitLab'),
      ],
    );
  }
}
