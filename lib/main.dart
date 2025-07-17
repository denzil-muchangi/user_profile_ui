import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// This widget is the root of your application.
class MyApp extends StatelessWidget {
  const MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  // TODO: Implement menu drawer
                },
              );
            },
          ),
          backgroundColor: Colors.transparent, // Make AppBar transparent
          elevation: 0, // Remove AppBar shadow
        ),
        extendBodyBehindAppBar: true, // Allow body to extend behind AppBar
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Profile Section
            Container(
              padding: const EdgeInsets.only(
                top: 80.0,
                bottom: 40.0,
              ), // Add padding to avoid AppBar
              color: Colors.blue, // Placeholder color for the background shape
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: const NetworkImage(
                      'https://via.placeholder.com/150', // Placeholder image URL
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Arthur Debons', // Placeholder Name
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Professional', // Placeholder Title
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                ],
              ),
            ),

            // Menu Section
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero, // Remove default ListView padding
                children: const <Widget>[
                  ListTile(
                    leading: Icon(Icons.person_outline),
                    title: Text('My Profile'),
                  ),
                  ListTile(
                    leading: Icon(Icons.message_outlined),
                    title: Text('Messages'),
                  ),
                  ListTile(
                    leading: Icon(Icons.share_outlined),
                    title: Text('Requests'),
                  ),
                  ListTile(
                    leading: Icon(Icons.location_on_outlined),
                    title: Text('Locations'),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings_outlined),
                    title: Text('Settings'),
                  ),
                ],
              ),
            ),

            // Logout Button Placeholder
            Container(
              padding: const EdgeInsets.all(20.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.logout),
                  SizedBox(width: 5),
                  Text('Logout', style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
