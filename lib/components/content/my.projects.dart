import 'package:flutter/material.dart';
import 'package:portfolio/components/content/project.card.dart';
import 'package:portfolio/models/projects.model.dart';
import 'package:portfolio/repositories/projects.repository.dart';
import 'package:portfolio/utils/constants.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ProjectsModel> projectsRepository =
        ProjectsRepository().getProjects();

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
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: projectsRepository.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: defaultPadding,
              crossAxisSpacing: defaultPadding,
              childAspectRatio: 1.3,
              crossAxisCount: 3,
            ),
            itemBuilder: (context, i) {
              return ProjectCard(project: projectsRepository[i]);
            },
          ),
        ],
      ),
    );
  }
}
