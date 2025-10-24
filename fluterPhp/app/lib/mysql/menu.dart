import 'package:flutter/material.dart';

import 'login.dart';

class SubMenu extends StatefulWidget {
  const SubMenu({super.key});

  @override
  State<SubMenu> createState() => _SubMenuState();
}

class _SubMenuState extends State<SubMenu> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // ==== Drawer ====
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                decoration:  BoxDecoration(
                  color: Color(0xFFE27D60),
                ),
                accountName:  Text(
                  "Chef Samiir",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                accountEmail:  Text("chef@samiircafe.com"),
                currentAccountPicture:  CircleAvatar(
                  foregroundImage: AssetImage("assets/pro.jpg"), // image not removed
                ),
              ),

              ListTile(
                leading:  Icon(Icons.restaurant_menu_outlined, color: Colors.orange),
                title:  Text("Menu"),
                onTap: () {},
              ),

              ListTile(
                leading:  Icon(Icons.local_offer_outlined, color: Colors.orange),
                title:  Text("Special Offers"),
                onTap: () {},
              ),

              ListTile(
                leading:  Icon(Icons.shopping_cart_outlined, color: Colors.orange),
                title:  Text("My Orders"),
                onTap: () {},
              ),

              ListTile(
                leading:  Icon(Icons.favorite_border, color: Colors.orange),
                title:  Text("Favorites"),
                onTap: () {},
              ),

              ListTile(
                leading:  Icon(Icons.delivery_dining, color: Colors.orange),
                title:  Text("Track Delivery"),
                onTap: () {},
              ),

               Divider(thickness: 2),

              ListTile(
                leading:  Icon(Icons.storefront_outlined, color: Colors.brown),
                title:  Text("Our Branches"),
                onTap: () {},
              ),

              ListTile(
                leading:  Icon(Icons.settings_outlined, color: Colors.grey),
                title:  Text("Settings"),
                onTap: () {},
              ),

              ListTile(
                leading:  Icon(Icons.help_outline, color: Colors.grey),
                title:  Text("Help & Support"),
                onTap: () {},
              ),

              ListTile(
                leading:  Icon(Icons.logout, color: Colors.redAccent),
                title:  Text("Logout"),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  Login()),
                    );
                },
              ),
            ],
          ),
        ),

        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Builder(
                        builder: (context) => IconButton(
                          icon: const Icon(Icons.menu, size: 28),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                        ),
                      ),

                      Row(
                        children:  [
                          Icon(Icons.location_on, color: Colors.redAccent),
                          SizedBox(width: 4),
                          Text(
                            "California, USA",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),

                       Icon(Icons.notifications_none, size: 28),
                    ],
                  ),
                ),

                 SizedBox(height: 20),

                // ==== Search Bar ====
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon:  Icon(Icons.search, size: 30),
                      suffixIcon:  Icon(Icons.filter_list, size: 30),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding:  EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 20,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),

                 SizedBox(height: 15),

                // ==== Banner ====
                Column(
                  children: [
                    SizedBox(
                      height: 200,
                      width: 400,
                      child: Card(
                        elevation: 10,
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding:  EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text(
                                    "Harry Up Get 30% Off",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                   SizedBox(height: 5),

                                   Text(
                                    "Shop Your Daily",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),

                                   SizedBox(height: 5),

                                   Text(
                                    "Necessary",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 20,
                                    ),
                                  ),

                                   SizedBox(height: 10),

                                  TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.orange,
                                      foregroundColor: Colors.white,
                                      padding:  EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 10,
                                      ),
                                    ),

                                    child:  Text(
                                      "Shop Now",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                              Image.asset(
                                "assets/veg.png",
                                width: 180,
                                height: 200,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                 SizedBox(height: 15),

                // ==== Categories ====
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        elevation: 5,
                        shape:  CircleBorder(),
                        child: ClipOval(
                          child: Image.asset(
                            "assets/vg1.png",
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        elevation: 5,
                        shape:  CircleBorder(),
                        child: ClipOval(
                          child: Image.asset(
                            "assets/vg2.png",
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        elevation: 5,
                        shape:  CircleBorder(),
                        child: ClipOval(
                          child: Image.asset(
                            "assets/met1.png",
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        elevation: 5,
                        shape:  CircleBorder(),
                        child: ClipOval(
                          child: Image.asset(
                            "assets/dr1.jpg",
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                 SizedBox(height: 15),

                // ==== Popular Header ====
                Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(
                        "Popular",
                        style: TextStyle(fontSize: 25),
                      ),
                      TextButton(
                        onPressed: () {},
                        child:  Text(
                          "See All",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),

                // last section

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 200,
                      height: 240,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                                child: Image.asset(
                                  "assets/or.png",
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.shopping_basket, color: Colors.black,),
                                ],
                              ),
                            ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Orange",
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),

                                  Text(
                                    "\$3",
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),

                                ],
                              ),

                            SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "10kg",
                                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
                                  ),

                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.orange,),
                                      Text(
                                        "4.8",
                                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
                                      ),
                                    ],
                                  )
                                ],
                            ),
                          ],
                        ),
                      ),
                    ),


                  //   card 2

                    SizedBox(
                      width: 200,
                      height: 240,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                                child: Image.asset(
                                  "assets/gp.png",
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.shopping_basket, color: Colors.black,),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Grapes",
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),

                                Text(
                                  "\$2.5",
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),

                              ],
                            ),

                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "10kg",
                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
                                ),

                                Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.orange,),
                                    Text(
                                      "4.8",
                                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 200,
                      height: 240,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                                child: Image.asset(
                                  "assets/ice.png",
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.shopping_basket, color: Colors.black,),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Ice Cream",
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),

                                Text(
                                  "\$1.05",
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),

                              ],
                            ),

                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "10kg",
                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
                                ),

                                Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.orange,),
                                    Text(
                                      "4.8",
                                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),


                    //   card 2

                    SizedBox(
                      width: 200,
                      height: 240,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                                child: Image.asset(
                                  "assets/dri.png",
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.shopping_basket, color: Colors.black,),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Drinks",
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),

                                Text(
                                  "\$2",
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),

                              ],
                            ),

                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "10kg",
                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
                                ),

                                Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.orange,),
                                    Text(
                                      "4.8",
                                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),



                  ],
                ),
              ],
            ),

          ),

        ),

        // ==== Bottom Navigation Bar ====
        bottomNavigationBar: NavigationBar(
          selectedIndex: selectedIndex,
          onDestinationSelected: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          destinations:  [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(Icons.favorite_outline),
              selectedIcon: Icon(Icons.favorite),
              label: "Favorites",
            ),
            NavigationDestination(
              icon: Icon(Icons.shopping_cart_outlined),
              selectedIcon: Icon(Icons.shopping_cart),
              label: "Cart",
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outline),
              selectedIcon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),

      ),
    );
  }
}


