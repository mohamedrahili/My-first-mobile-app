import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile Picture
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/pr.jpg'),
            ),
            const SizedBox(height: 16),
            // Name
            const Text(
              'Mohamed',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const SizedBox(height: 24),
            // Additional Information Section
            Expanded(
              child: ListView(
                children: [
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.phone),
                      title: const Text('Phone Number'),
                      subtitle: const Text('+212 634 151 765'),
                      trailing: IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          // Add edit logic here
                        },
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.email),
                      title: const Text('Email'),
                      subtitle: const Text('mohamed@gmail.com'),
                      trailing: IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          // Add edit logic here
                        },
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.location_on),
                      title: const Text('Address'),
                      subtitle: const Text('Morocco, Casablanca'),
                      trailing: IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          // Add edit logic here
                        },
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.info),
                      title: const Text('About'),
                      subtitle: const Text('This is a short bio'),
                      trailing: IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          // Add edit logic here
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
