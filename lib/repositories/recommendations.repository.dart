import 'package:portfolio/models/recommendations.model.dart';

class RecommendationsRepository {
  List<RecommendationsModel> getRecommendations() {
    try {
      final values = [
        {
          "guid": "ac0f8cc8-06bd-4b21-b6c4-f0eb0000276e",
          "name": 'Camila Cunha',
          "source": 'LinkedIn',
          "text":
              """Quando iniciamos o processo seletivo para captação dos jovens que teriam a oportunidade de participar do Projeto Pescar FFM em 2020, o Yan já se destacou na entrevista, demonstrando ser um jovem com atitude, determinação e foco.\n
            Ao longo do curso, soube extrair o melhor do projeto, se desenvolvendo e se capacitando para abraçar oportunidades profissionais, construindo boas relações com os colegas e com os professores/voluntários, tornando-se protagonista de sua vida.\n
            Tive a grata oportunidade de contar com o Yan, após a conclusão do projeto, para estar comigo em palestras e entrevistas sobre o Projeto Pescar, contribuindo com seu depoimento e experiência de vida.\n
            Parabéns por sua trajetória, Yan!\n
            Siga voando e evoluindo sempre!'
          """,
          "image": 'assets/images/camila.jpeg',
        },
        {
          "guid": "2fdb68a6-73b3-4a8e-873f-b3b5ba7ba823",
          "name": 'Camila Cunha',
          "source": 'LinkedIn',
          "text":
              """Quando iniciamos o processo seletivo para captação dos jovens que teriam a oportunidade de participar do Projeto Pescar FFM em 2020, o Yan já se destacou na entrevista, demonstrando ser um jovem com atitude, determinação e foco.\n
              Ao longo do curso, soube extrair o melhor do projeto, se desenvolvendo e se capacitando para abraçar oportunidades profissionais, construindo boas relações com os colegas e com os professores/voluntários, tornando-se protagonista de sua vida.\n
              Tive a grata oportunidade de contar com o Yan, após a conclusão do projeto, para estar comigo em palestras e entrevistas sobre o Projeto Pescar, contribuindo com seu depoimento e experiência de vida.\n
              Parabéns por sua trajetória, Yan!\n
              Siga voando e evoluindo sempre!'
          """,
          "image": 'assets/images/camila.jpeg',
        },
        {
          "guid": "41af8503-b7de-433c-8b0b-31b07ccedf49",
          "name": 'Camila Cunha',
          "source": 'LinkedIn',
          "text":
              """Quando iniciamos o processo seletivo para captação dos jovens que teriam a oportunidade de participar do Projeto Pescar FFM em 2020, o Yan já se destacou na entrevista, demonstrando ser um jovem com atitude, determinação e foco.\n
            Ao longo do curso, soube extrair o melhor do projeto, se desenvolvendo e se capacitando para abraçar oportunidades profissionais, construindo boas relações com os colegas e com os professores/voluntários, tornando-se protagonista de sua vida.\n
            Tive a grata oportunidade de contar com o Yan, após a conclusão do projeto, para estar comigo em palestras e entrevistas sobre o Projeto Pescar, contribuindo com seu depoimento e experiência de vida.\n
            Parabéns por sua trajetória, Yan!\n
            Siga voando e evoluindo sempre!'
          """,
          "image": 'assets/images/camila.jpeg',
        },
        {
          "guid": "41af8503-b7de-433c-8b0b-31b07ccedf49",
          "name": 'Camila Cunha',
          "source": 'LinkedIn',
          "text":
              """Quando iniciamos o processo seletivo para captação dos jovens que teriam a oportunidade de participar do Projeto Pescar FFM em 2020, o Yan já se destacou na entrevista, demonstrando ser um jovem com atitude, determinação e foco.\n
            Ao longo do curso, soube extrair o melhor do projeto, se desenvolvendo e se capacitando para abraçar oportunidades profissionais, construindo boas relações com os colegas e com os professores/voluntários, tornando-se protagonista de sua vida.\n
            Tive a grata oportunidade de contar com o Yan, após a conclusão do projeto, para estar comigo em palestras e entrevistas sobre o Projeto Pescar, contribuindo com seu depoimento e experiência de vida.\n
            Parabéns por sua trajetória, Yan!\n
            Siga voando e evoluindo sempre!'
          """,
          "image": 'assets/images/camila.jpeg',
        },
        {
          "guid": "41af8503-b7de-433c-8b0b-31b07ccedf49",
          "name": 'Camila Cunha',
          "source": 'LinkedIn',
          "text":
              """Quando iniciamos o processo seletivo para captação dos jovens que teriam a oportunidade de participar do Projeto Pescar FFM em 2020, o Yan já se destacou na entrevista, demonstrando ser um jovem com atitude, determinação e foco.\n
            Ao longo do curso, soube extrair o melhor do projeto, se desenvolvendo e se capacitando para abraçar oportunidades profissionais, construindo boas relações com os colegas e com os professores/voluntários, tornando-se protagonista de sua vida.\n
            Tive a grata oportunidade de contar com o Yan, após a conclusão do projeto, para estar comigo em palestras e entrevistas sobre o Projeto Pescar, contribuindo com seu depoimento e experiência de vida.\n
            Parabéns por sua trajetória, Yan!\n
            Siga voando e evoluindo sempre!'
          """,
          "image": 'assets/images/camila.jpeg',
        },
      ];

      final List<RecommendationsModel> data = List<RecommendationsModel>.from(
        (values).map<RecommendationsModel>(
          (item) => RecommendationsModel.fromMap(item),
        ),
      );

      return data;
    } catch (e) {
      throw e.toString();
    }
  }
}
