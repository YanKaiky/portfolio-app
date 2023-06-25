// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:portfolio/components/content/project.card.dart';
import 'package:portfolio/models/projects.model.dart';
import 'package:portfolio/repositories/projects.repository.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/responsive.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Projects',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: defaultPadding),
          const Responsive(
            mobile: ProjectsGridView(
              crossAxisCount: 1,
              childAspectRatio: 1.8,
            ),
            mobileLarge: ProjectsGridView(crossAxisCount: 2),
            tablet: ProjectsGridView(childAspectRatio: 1.1),
            desktop: ProjectsGridView(),
          )
        ],
      ),
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;

  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ProjectsModel> projectsRepository =
        ProjectsRepository().getProjects();

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: projectsRepository.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: defaultPadding,
        crossAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
        crossAxisCount: crossAxisCount,
      ),
      itemBuilder: (context, i) {
        return ProjectCard(project: projectsRepository[i]);
      },
    );
  }
}
