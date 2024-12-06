import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile Page')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/me.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Actor Name',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Biography: An accomplished actor known for their work in both film and theater.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
