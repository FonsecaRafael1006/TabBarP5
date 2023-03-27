import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pestaña tab',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Color(0xff5f5e54)), // Change background color from here
            tabs: [
              Tab(
                icon: Icon(Icons.shopping_cart, color: Colors.yellow),
                text: 'Productos',
              ),
              Tab(
                icon: Icon(Icons.card_giftcard, color: Colors.yellow),
                text: 'Ofertas',
              ),
              Tab(
                icon: Icon(Icons.local_shipping, color: Colors.yellow),
                text: 'Envío',
              ),
              Tab(
                icon: Icon(Icons.help_outline, color: Colors.yellow),
                text: 'Ayuda',
              ),
            ],
          ),
          backgroundColor: Colors.black, // Change the color of the app bar
          title: Text('Tabs Demo', style: TextStyle(color: Colors.yellow)),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.shopping_cart, size: 350, color: Color(0xff5f5e54)),
            Icon(Icons.card_giftcard, size: 350, color: Color(0xff5f5e54)),
            Icon(Icons.local_shipping, size: 350, color: Color(0xff5f5e54)),
            Icon(Icons.help_outline, size: 350, color: Color(0xff5f5e54)),
          ],
        ),
      ),
    );
  }
}
