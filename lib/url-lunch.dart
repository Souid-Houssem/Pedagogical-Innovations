import 'package:flutter/material.dart';
import 'package:pedagogicalinnovation/Components/test.dart';
import 'package:url_launcher/url_launcher.dart';

class CoursPage extends StatefulWidget {
  @override
  _CoursPageState createState() => _CoursPageState();
}

class _CoursPageState extends State<CoursPage> {
  // Liste de cours de démonstration (remplacez avec vos données réelles)
  final List<Course> courses = [
    Course(
      title: 'Introduction à Flutter',
      description: 'Apprenez les bases de Flutter pour le développement mobile.',
      moodleLink: 'http://youtube.com',
    ),
    // Ajoutez d'autres cours selon votre besoin
  ];

  @override
  void initState() {
    super.initState();
    // Ouvre le premier lien Moodle automatiquement lors du chargement de la page
    _launchFirstMoodleLink();
  }

  void _launchFirstMoodleLink() async {
    if (await canLaunch(courses.first.moodleLink)) {
      await launch(courses.first.moodleLink);
    } else {
      // Gestion d'une erreur si le lien ne peut pas être ouvert
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Impossible d\'ouvrir le lien Moodle')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cours'),
      ),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(course.title),
              subtitle: Text(course.description),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Naviguer vers le lien Moodle au lieu de lancer onTap
                _launchMoodleLink(course.moodleLink);
              },
            ),
          );
        },
      ),
    );
  }

  void _launchMoodleLink(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      // Gestion d'une erreur si le lien ne peut pas être ouvert
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Impossible d\'ouvrir le lien Moodle')),
      );
    }
  }
}
