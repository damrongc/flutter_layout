import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatelessWidget {
  final String userId;
  const ProfileScreen({@required this.userId});

  void getUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String userId = prefs.getString("user_id");
    print(userId);
  }

  @override
  Widget build(BuildContext context) {
    getUserId();
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile of ' + this.userId),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app_outlined),
            iconSize: 28,
            onPressed: () {
              const returnData = 20;
              Navigator.pop(context, returnData);
            },
          ),
        ],
      ),
    );
  }
}
