import 'package:flutter/material.dart';

void main() => runApp(ScienceApp());

class ScienceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'علوم متوسطة - السودان',
      theme: ThemeData(fontFamily: 'Cairo', primarySwatch: Colors.teal),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final grades = [
    {'name': 'الأول متوسط', 'color': Colors.teal},
    {'name': 'الثاني متوسط', 'color': Colors.orange},
    {'name': 'الثالث متوسط', 'color': Colors.indigo},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('العلوم - المرحلة المتوسطة'), centerTitle: true),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.teal[50],
            child: Text('تطبيق مجاني لوجه الله - يعمل بدون انترنت\nجمهورية السودان',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: grades.length,
              itemBuilder: (c,i) => Card(
                margin: EdgeInsets.all(12),
                child: ListTile(
                  leading: CircleAvatar(backgroundColor: grades[i]['color'] as Color, child: Text('${i+1}', style: TextStyle(color: Colors.white))),
                  title: Text(grades[i]['name'] as String, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  subtitle: Text('اضغط لعرض الدروس'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () => Navigator.push(c, MaterialPageRoute(builder: (_) => LessonsPage(grade: grades[i]['name'] as String))),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LessonsPage extends StatelessWidget {
  final String grade;
  LessonsPage({required this.grade});
  final lessons = {
    'الأول متوسط': ['الخلية وحدة الحياة', 'تصنيف الكائنات الحية', 'المادة وخصائصها', 'الطاقة وأنواعها'],
    'الثاني متوسط': ['أجهزة جسم الإنسان', 'التكاثر في الكائنات', 'التفاعلات الكيميائية', 'الحركة والقوى'],
    'الثالث متوسط': ['الوراثة', 'الكهرباء والمغناطيسية', 'البيئة والتوازن', 'الفضاء والكون'],
  };

  @override
  Widget build(BuildContext context) {
    var list = lessons[grade]?? [];
    return Scaffold(
      appBar: AppBar(title: Text(grade)),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (c,i) => Card(
          margin: EdgeInsets.all(8),
          child: ListTile(
            title: Text(list[i]),
            leading: Icon(Icons.science, color: Colors.teal),
            onTap: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('سيتم إضافة الشرح قريبا - ${list[i]}'))),
          ),
        ),
      ),
    );
  }
}
