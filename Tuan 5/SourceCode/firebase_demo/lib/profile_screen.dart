import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileScreen extends StatelessWidget {
  final User? user = FirebaseAuth.instance.currentUser;

  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final displayName = user?.displayName ?? 'No Name';
    final email = user?.email ?? 'No Email';
    final photoURL = user?.photoURL;

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(photoURL ?? 'https://via.placeholder.com/150'),
            ),
            SizedBox(height: 10),
            TextField(
              readOnly: true,
              decoration: InputDecoration(labelText: "Name", hintText: displayName),
            ),
            TextField(
              readOnly: true,
              decoration: InputDecoration(labelText: "Email", hintText: email),
            ),
            TextField(
              readOnly: true,
              decoration: InputDecoration(labelText: "Date of Birth", hintText: "23/05/1995"),
            ),
            Spacer(),
            ElevatedButton.icon(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                if (context.mounted) {
                  Navigator.of(context).pushReplacementNamed('/login');
                }
              },
              icon: Icon(Icons.logout),
              label: Text("Logout"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
