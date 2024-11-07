import 'package:flutter/material.dart';

class UserInfoScreen extends StatelessWidget {
  UserInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          userListTile('Email', 'Email sub', 0, context),
          userListTile('Phone', '4555', 0, context),
          userListTile('Shipping', '4555', 0, context),
          userListTile('Order', '4555', 0, context),
          userListTile('Logout', '4555', 0, context),
        ]),
      ),
    );
  }

  final List<IconData> _userTileIcons = [
    Icons.email,
    Icons.phone,
    Icons.local_shipping,
    Icons.watch_later,
    Icons.exit_to_app
  ];

  Widget userListTile(
      String title, String subtitle, int index, BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Theme.of(context).splashColor,
        child: ListTile(
          onTap: () {},
          title: Text(title),
          subtitle: Text(subtitle),
          leading: Icon(_userTileIcons[index]),
        ),
      ),
    );
  }
}
