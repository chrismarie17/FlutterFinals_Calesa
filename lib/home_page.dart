import 'package:flutter/material.dart';
import 'profile_page.dart';
import 'data_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => ProfilePage())),
              icon: Icon(Icons.person),
              label: Text('Go to Profile'),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => DataPage())),
              icon: Icon(Icons.data_usage),
              label: Text('View Data'),
            ),
          ],
        ),
      ),
    );
  }
}
