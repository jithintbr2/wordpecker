import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Profile')), body: _buildPage(context));
  }

  Widget _buildPage(BuildContext context) {
    return ListView(
      children: [
        Container(
            padding: EdgeInsets.all(40),
            color: Colors.white,
            child: CircleAvatar(
              radius: 70,
              backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
              child: Icon(
                Icons.person,
                size: 120,
                color: Theme.of(context).primaryColor.withOpacity(0.5),
              ),
            )),
        Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "name",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 14.0,
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 16.0,
                        ),
                      ))
                ],
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.vpn_key),
                title: Text("Change Password"),
                subtitle: Text(
                  "Set a new password",
                  style: Theme.of(context).textTheme.caption,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 12,
                ),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.location_history),
                title: Text("Saved Addresses"),
                subtitle: Text(
                  "View saved addresses",
                  style: Theme.of(context).textTheme.caption,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 12,
                ),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                subtitle: Text(
                  "Tap to logout",
                  style: Theme.of(context).textTheme.caption,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 12,
                ),
                onTap: () {},
              )
            ],
          ),
        )
      ],
    );
  }
}
