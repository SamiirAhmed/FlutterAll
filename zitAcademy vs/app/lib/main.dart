import 'package:flutter/material.dart';

void main() {
  runApp(const myapp());
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<myapp> {

  int mycurentindex=0;

  // page list

  List pages = [
    Container(color: Colors.yellowAccent,

      child: Center(
        child: Text("Home page Screan",
        style: TextStyle(
          fontSize: 70, color:Colors.white ,fontWeight: FontWeight.w600
        ),
        textAlign: TextAlign.center,
        ),
      ),

    ),


    Container(color: const Color.fromARGB(255, 136, 136, 92),

      child: Center(
        child: Text("Study page Screan",
        style: TextStyle(
          fontSize: 70, color:Colors.white ,fontWeight: FontWeight.w600
        ),
        textAlign: TextAlign.center,
        ),
      ),

    ),
    

    Container(color:  Colors.blueAccent,

      child: Center(
        child: Text("Reading page Screan",
        style: TextStyle(
          fontSize: 70, color:Colors.white ,fontWeight: FontWeight.w600
        ),
        textAlign: TextAlign.center,
        ),
      ),

    ),
    

    Container(color: Colors.red,

      child: Center(
        child: Text("Saved page Screan",
        style: TextStyle(
          fontSize: 70, color:Colors.white ,fontWeight: FontWeight.w600
        ),
        textAlign: TextAlign.center,
        ),
      ),

    ),


Container(color: Colors.blue,

      child: Center(
        child: Text("Home page Screan",
        style: TextStyle(
          fontSize: 70, color:Colors.white ,fontWeight: FontWeight.w600
        ),
        textAlign: TextAlign.center,
        ),
      ),

    ),

    

  ];


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(

          body: pages[mycurentindex],

          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.grey,  
            selectedItemColor: Colors.blue,
            currentIndex: mycurentindex,
            iconSize: 35,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,

            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Home"

                ),

                 BottomNavigationBarItem(
                icon: Icon(Icons.school_outlined),
                label: "Study"

                ),
                
                 BottomNavigationBarItem(
                icon: Icon(Icons.auto_stories_outlined),
                label: "Book"

                ),  

                  BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline),
                label: "Save"

                ),


                  BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined),
                label: "Setting"

                ),

            ],

                onTap: (myNewcurentindex) {
                  setState(() {
                    mycurentindex = myNewcurentindex;
                  });
                } ,

            ),
        ),
    );
  }
}