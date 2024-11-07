import 'package:flutter/material.dart';

class UserInfo extends StatefulWidget {
  @override
  _UserInfoState createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            titles('User info'),
            userListTile('Email', 'Email sub', Icons.email, context),
            userListTile('Phone', '4555', Icons.phone, context),
            userListTile('Shipping', '4555', Icons.local_shipping, context),
            userListTile('Order', '4555', Icons.watch_later, context),
            userListTile('Logout', '4555', Icons.exit_to_app, context),
            SwitchListTile(
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
              title: const Text('Dark Mode'),
              secondary: const Icon(Icons.dark_mode),
            )
          ],
        ),
      ),
    );
  }

  Widget titles(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget userListTile(
      String title, String subtitle, IconData icon, BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Theme.of(context).splashColor,
        child: ListTile(
          onTap: () {},
          title: Text(title),
          subtitle: Text(subtitle),
          leading: Icon(icon),
        ),
      ),
    );
  }
}
