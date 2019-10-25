import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:blibli_flutter/components/horizontal_listview.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    /**
     * For home creation
     */
    Widget image_carousel = Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('src/images/w3.jpeg'),
          AssetImage('src/images/c1.jpg'),
          AssetImage('src/images/m1.jpeg'),
          AssetImage('src/images/m2.jpg'),
          AssetImage('src/images/w1.jpeg'),
          AssetImage('src/images/w4.jpeg')
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(seconds: 1),
        dotSize: 4.0,
        indicatorBgPadding: 10.0,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Blimart'),
        backgroundColor: Colors.blue,
        elevation: 0.0, // removing shadow
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {},
          ),
        ]
      ),
      /**
       * Navigation drawer
       */
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            /**
             * Create header for Navigation Drawer
             */
            UserAccountsDrawerHeader(
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white, size: 50.0)),
              ),
              decoration: BoxDecoration(color: Colors.blue),
              accountName: Text('Goldwin Japar'),
              accountEmail: Text('goldwin.japar@gdn-commerce.com'),
            ),
            /**
             * Navigation Drawer's Body here
             */
            InkWell(
                onTap: () {},
                child: ListTile(
                    title: Text('Home'),
                    leading: Icon(Icons.home, color: Colors.blue))),
            InkWell(
                onTap: () {},
                child: ListTile(
                    title: Text('My Account'),
                    leading: Icon(Icons.person, color: Colors.blue))),
            InkWell(
                onTap: () {},
                child: ListTile(
                    title: Text('My Orders'),
                    leading: Icon(Icons.shopping_basket, color: Colors.blue))),
            InkWell(
                onTap: () {},
                child: ListTile(
                    title: Text('Categories'),
                    leading: Icon(Icons.dashboard, color: Colors.blue))),
            InkWell(
                onTap: () {},
                child: ListTile(
                    title: Text('Favourites'),
                    leading: Icon(Icons.favorite, color: Colors.blue))),
            Divider(),
            InkWell(
                onTap: () {},
                child: ListTile(
                    title: Text('Settings'),
                    leading: Icon(Icons.settings, color: Colors.grey))),
            InkWell(
                onTap: () {},
                child: ListTile(
                    title: Text('About'),
                    leading: Icon(Icons.help, color: Colors.grey))),
          ],
        ),
      ),
      /**
       * For Body
       */
      body: ListView(
        children: <Widget>[
          // image carousel begins here
          image_carousel,

          // padding widget
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Categories'),
          ),

          // horizontal
          HorizontalListView(),
        ],
      ),
    );
  }
}
