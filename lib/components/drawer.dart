import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          InkWell(
            onTap: () {

            },
            child: UserAccountsDrawerHeader(
              accountEmail: Text("EmailDemo@Dmail.com"),
              accountName: Text("Demo Name"),
              currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
              decoration: BoxDecoration(
                  color: Colors.cyan,
                  image: DecorationImage(
                      image:


                      NetworkImage(
                          "https://image.freepik.com/free-photo/smooth-dark-blue-background_1258-45745.jpg"),
                      fit: BoxFit.cover)),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home_rounded,
              color: Colors.blue,
              size: 25,
            ),
            title: Text(
              "الصفحة الرئيسية",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed("HomePage");
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.category_rounded,
              color: Colors.blue,
              size: 25,
            ),
            title: Text(
              "الأقسام",
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.of(context).pushNamed("Categories");
            },
          ),
          Divider(color: Colors.blue),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.blue,
              size: 25,
            ),
            title: Text(
              "الأعدادات",
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.info_rounded,
              color: Colors.blue,
              size: 25,
            ),
            title: Text(
              "حول التطبيق",
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.grey,
              size: 20,
            ),
            title: Text(
              "تسجيل الخروج",
              style: TextStyle(fontSize: 15),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
