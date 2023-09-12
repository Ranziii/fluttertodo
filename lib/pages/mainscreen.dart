import 'package:flutter/material.dart';
class MainScreen extends StatelessWidget {
  MainScreen({Key? key});

  void _settingsOpen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Настройки'),
              backgroundColor: Colors.deepOrangeAccent,
            ),
            body: Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.deepOrangeAccent),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamedAndRemoveUntil(context, '/settings', (route) => false);
                  },
                  child: Text('На главную'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('TodoList'),
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.menu_outlined),
            onPressed: () {
              _settingsOpen(context);
            },
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 220,
            child: Text(
              'Wellcome',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
          Positioned(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/todo');
              },
              style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
              child: Text(
                'Следующая страница',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            bottom: 300,
          ),
        ],
      ),
    );
  }
}