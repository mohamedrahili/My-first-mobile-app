import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          // Change Name
          ListTile(
            leading: const Icon(Icons.person, color: Colors.teal),
            title: const Text('Change Name'),
            onTap: () {
              // Action for changing name
              showDialog(
                context: context,
                builder: (context) {
                  return _buildDialog(context, 'Change Name', 'Enter your new name');
                },
              );
            },
          ),
          const Divider(),
          // Change Password
          ListTile(
            leading: const Icon(Icons.lock, color: Colors.teal),
            title: const Text('Change Password'),
            onTap: () {
              // Action for changing password
              showDialog(
                context: context,
                builder: (context) {
                  return _buildDialog(context, 'Change Password', 'Enter your new password');
                },
              );
            },
          ),
          const Divider(),
          // Notifications
          SwitchListTile(
            value: true,
            onChanged: (value) {
              // Action for toggling notifications
            },
            title: const Text('Enable Notifications'),
            secondary: const Icon(Icons.notifications, color: Colors.teal),
          ),
          const Divider(),
          // Logout
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.teal),
            title: const Text('Logout'),
            onTap: () {
              // Handle logout
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Logout'),
                  content: const Text('Are you sure you want to logout?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        // Perform logout logic here
                        Navigator.pop(context);
                      },
                      child: const Text('Logout'),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildDialog(BuildContext context, String title, String hintText) {
    return AlertDialog(
      title: Text(title),
      content: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context); // Close dialog
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            // Perform save logic
            Navigator.pop(context);
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}
