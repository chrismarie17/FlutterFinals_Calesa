import 'package:flutter/material.dart';

class DataPage extends StatefulWidget {
  @override
  _DataPageState createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  List<Map<String, dynamic>> actors = [
    {'name': 'Actor 1', 'image': 'assets/me.jpg', 'details': 'Famous for Drama'},
    {'name': 'Actor 2', 'image': 'assets/minions.jpg', 'details': 'Known for Action'},
  ];

  void deleteActor(int index) {
    setState(() {
      actors.removeAt(index);
    });
  }

  void editActor(int index, String newName) {
    setState(() {
      actors[index]['name'] = newName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Data Page')),
      body: ListView.builder(
        itemCount: actors.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(actors[index]['image']),
              ),
              title: Text(actors[index]['name']),
              subtitle: Text(actors[index]['details']),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      TextEditingController controller =
                          TextEditingController(text: actors[index]['name']);
                      showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                          title: Text('Edit Actor'),
                          content: TextField(controller: controller),
                          actions: [
                            TextButton(
                              onPressed: () {
                                editActor(index, controller.text);
                                Navigator.pop(context);
                              },
                              child: Text('Save'),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () => deleteActor(index),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
