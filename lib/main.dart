import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'pages/homepage.dart';

void main() async {
  //Initialise the Flutter Engine
  WidgetsFlutterBinding.ensureInitialized();

  //Set up the display of the app
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
      .then((_) => runApp(const ProviderScope(child: Routes())));
}

class Routes extends StatelessWidget {
  const Routes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LG UI Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),

        //Write other routes here
        // '/AnotherPage': (context) => const AnotherPage(),
      },
    );
  }
}
