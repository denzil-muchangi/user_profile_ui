import 'package:flutter/material.dart';
import 'package:user_profile_ui/curved_background_painter.dart';

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
        body: Stack(
          children: <Widget>[
            CustomPaint(
              painter: CurvedBackgroundPainter(),
              child: Container(),
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
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
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // Profile Section
                  Container(
                    padding: const EdgeInsets.only(
                      top: 80.0,
                      bottom: 40.0,
                    ), // Add padding to avoid AppBar
                    // color: Colors.blue, // Placeholder color for the background shape
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: const NetworkImage(
                            'https://i.imgur.com/2ZQ34Yj.png', // Image from the provided photo
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
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Professional', // Placeholder Title
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ],
              ),
            ),

            // Menu Section
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero, // Remove default ListView padding
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.person_outline, color: Colors.black54),
                    title: const Text('My Profile', style: TextStyle(color: Colors.black87)),
                    selected: true, // Highlight 'My Profile'
                    selectedTileColor: Colors.grey[200],
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.message_outlined, color: Colors.black54),
                    title: const Text('Messages', style: TextStyle(color: Colors.black87)),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.share_outlined, color: Colors.black54),
                    title: const Text('Requests', style: TextStyle(color: Colors.black87)),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.location_on_outlined, color: Colors.black54),
                    title: const Text('Locations', style: TextStyle(color: Colors.black87)),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings_outlined, color: Colors.black54),
                    title: const Text('Settings', style: TextStyle(color: Colors.black87)),
                    onTap: () {},
                  ),
                ],
              ),
            ),

            // Logout Button
            Container(
              padding: const EdgeInsets.all(20.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.logout, color: Colors.black54),
                  SizedBox(width: 5),
                  Text('Logout', style: TextStyle(fontSize: 18, color: Colors.black87)),
                ],
              ),
            ),
                ],
              ),
            ),
          ],
          ],
        ),
      ),
    );
  }
}
