import 'package:flutter/material.dart';
import 'package:flutter_layout/screens/screens.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyListView extends StatelessWidget {
  void setUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('user_id', "DamrongShared");
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.person),
          subtitle: Text('My sub title'),
          title: Text('My title'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Divider(
          color: Colors.black,
        ),
        ListTile(
          leading: Icon(Icons.person),
          subtitle: Text('My sub title'),
          title: Text('My title'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () async {
            setUserId();
            final ret = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen1(),
                ));
          },
        ),
        Divider(
          color: Colors.black,
        ),
        ListTile(
          leading: Icon(Icons.person),
          subtitle: Text('My sub title'),
          title: Text('My title'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.person),
          subtitle: Text('My sub title'),
          title: Text('My title'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.person),
          subtitle: Text('My sub title'),
          title: Text('My title'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.person),
          subtitle: Text('My sub title'),
          title: Text('My title'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.person),
          subtitle: Text('My sub title'),
          title: Text('My title'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.person),
          subtitle: Text('My sub title'),
          title: Text('My title'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.person),
          subtitle: Text('My sub title'),
          title: Text('My title'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.person),
          subtitle: Text('My sub title'),
          title: Text('My title'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.person),
          subtitle: Text('My sub title'),
          title: Text('My title'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }
}
