import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.lightBlue,
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              alignment: Alignment.center,
              color: Color.fromARGB(255, 255, 252, 81),
              child: CircleAvatar(
                child: Icon(Icons.person,
                color: Colors.blue,
                size: 40,),
                backgroundColor: Colors.red,
                radius: 50,
                
                ),
            ),
            ListTile(
              leading: Icon(Icons.home_work),
              title: Text('Home'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
             ListTile(
              leading: Icon(Icons.app_blocking),
              title: Text('App'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
             ListTile(
              leading: Icon(Icons.download),
              title: Text('Downloads'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      );
  }
}