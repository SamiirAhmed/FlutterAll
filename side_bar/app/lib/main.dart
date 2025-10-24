import 'package:flutter/material.dart';

void main() {
  runApp(const DrawerExample());
} 

class DrawerExample extends StatefulWidget {
  const DrawerExample({super.key});

  @override
  State<DrawerExample> createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Telegram",
          style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        drawer: Drawer(
          child: ListView (
            padding: EdgeInsets.zero,
           children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
           color:  Color(0xFF517DA2),  

            ),
              accountName: Text("Samiir Ahmed",
                style: TextStyle(fontSize: 20),
              ),
               accountEmail: Text("252614178717"),
            currentAccountPicture: const CircleAvatar(
             foregroundImage: AssetImage("assets/profile.jpg"),

           ),
              
              ),

          ListTile(
            title: Text("New Group"),
            leading: Icon(Icons.group_outlined),
          ),
              
            ListTile(
            title: Text("Contact"),
            leading: Icon(Icons.person_outline),
          ),
            
             ListTile(
            title: Text("Calls"),
            leading: Icon(Icons.call_outlined),
          ),

           ListTile(
            title: Text("people Nearby"),
            leading: Icon(Icons.person_pin_circle_outlined),
          ),


           ListTile(
            title: Text("Saved Message"),
            leading: Icon(Icons.bookmark_outline),
          ),


          Divider(
            height: 15,
            thickness: 5,
          ), 
            

               ListTile(
            title: Text("Invite Friends"),
            leading: Icon(Icons.person_add_outlined),
          ),
            

             ListTile(
            title: Text("Invite Friends"),
            leading: Icon(Icons.help_outline),
          ),
            


           ],
          ),
        ),
        
      ),
    );
  }
}