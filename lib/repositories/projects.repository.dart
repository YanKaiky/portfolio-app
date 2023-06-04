import 'package:portfolio/models/projects.model.dart';

class ProjectsRepository {
  List<ProjectsModel> getProjects() {
    try {
      final values = [
        {
          "guid": "ac0f8cc8-06bd-4b21-b6c4-f0eb0000276e",
          "title": 'Cinemovie - Online movies, series and animes',
          "description": 'Free movies, series and animes',
          "category": 'WEB - API',
          "url": 'https://github.com/YanKaiky/cinemovie',
        },
        {
          "guid": "c93a3fb9-305a-452c-b673-dafbacf41365",
          "title": 'Instituo Pequena Fênix - IPF',
          "description": "Children's Hospital",
          "category": 'WEB',
          "url": "https://github.com/YanKaiky/white-label-hospital",
        },
        {
          "guid": "034c2e0c-b352-4a30-956e-ceb8ac0dffa4",
          "title": 'Fintelles - Personal finance',
          "description": 'Personal finance tracking website',
          "category": 'WEB - API',
          "url": 'https://github.com/YanKaiky/fintellis',
        },
        {
          "guid": "903d1839-a22a-4ea1-ac91-4b628fc16967",
          "title": 'User Management',
          "description":
              'Site for registration of users, cities, states and countries',
          "category": 'WEB - API',
          "url": 'https://github.com/YanKaiky/user-management',
        },
        {
          "guid": "903d1839-a22a-4ea1-ac91-4b628fc16967",
          "title": 'CafeOn - Menu',
          "description": 'Mobile APP for varied menus of cafes and snacks',
          "category": 'APP',
          "url": 'https://github.com/YanKaiky/cafe',
        },
        {
          "guid": "903d1839-a22a-4ea1-ac91-4b628fc16967",
          "title": 'ShopShoe - Sales APP',
          "description": 'Shoe sales APP',
          "category": 'APP',
          "url": 'https://github.com/YanKaiky/shop',
        },
      ];

      final List<ProjectsModel> data = List<ProjectsModel>.from(
        (values).map<ProjectsModel>(
          (item) => ProjectsModel.fromMap(item),
        ),
      );

      return data;
    } catch (e) {
      throw e.toString();
    }
  }
}
