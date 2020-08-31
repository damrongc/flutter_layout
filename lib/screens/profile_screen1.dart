import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen1 extends StatefulWidget {
  @override
  _ProfileScreen1State createState() => _ProfileScreen1State();
}

class _ProfileScreen1State extends State<ProfileScreen1> {
  String _userId = "";
  void getUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    print("user_id-->" + _userId);
    setState(() {
      _userId = prefs.getString("user_id");
    });
    print("user_id-->" + _userId);
  }

  @override
  void initState() {
    super.initState();
    getUserId();
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile of " + _userId),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pop(context, "xxx");
            },
          ),
        ],
      ),
    );
  }
}
