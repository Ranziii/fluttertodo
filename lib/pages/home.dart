import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String _userU;
  List<String> list1 = [];

  void initState() {
    super.initState();
    list1.addAll(['Lina', 'Slardar']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        title: const Text('Dota'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.menu), // Add the correct icon here.
            onPressed: () {
              // Add your onPressed logic here.
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: list1.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: Key(list1[index]),
            child: Card(
              child: ListTile(
                title: Text(list1[index]),
                trailing: IconButton(
                  icon: Icon(
                    Icons.delete_forever,
                    color: Colors.red[900],
                  ),
                  onPressed: () {
                    setState(() {
                      list1.removeAt(index);
                    });
                  },
                ),
              ),
            ),
            onDismissed: (direction) {
              if (direction == DismissDirection.endToStart)
                setState(() {
                  list1.removeAt(index);
                });
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Add element'),
                content: TextField(
                  onChanged: (String value) {
                    _userU = value;
                  },
                ),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        list1.add(_userU);
                      });

                      Navigator.of(context).pop();
                    },
                    child: Text('Add'),
                  )
                ],
              );
            },
          );
        },
        child: Icon(
          Icons.add_box_rounded,
          color: Colors.red[900],
        ),
      ),
    );
  }
}
