import 'package:flutter/material.dart';

class NavigationalDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://avatars2.githubusercontent.com/u/6559664?s=460&v=4")),
            accountName: Text(
              'Thamaraiselvam',
              style: new TextStyle(fontSize: 20),
            ),
            accountEmail: Text('thamaraiselvam.t@thoughtworks.com')),
        ListTile(leading: Icon(Icons.home), title: Text('Home'), onTap: () {}),
        ListTile(
            leading: Icon(Icons.person), title: Text('Profile'), onTap: () {}),
        ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {}),
        ListTile(leading: Icon(Icons.help), title: Text('Help'), onTap: () {}),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: FlatButton(
            color: Colors.pink,
            onPressed: () {},
            child: Text(
              'Logout',
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    ));
  }
}
