import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ten/widget/icon_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = "Menu Hover Animation";
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primaryColor: Colors.blue),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(MyApp.title),
        centerTitle: true,
      ),
      body: Center(
        child: Wrap(
          direction: Axis.vertical,
          children: const [
            IconWidget(
              text: "Home",
              icon: FontAwesomeIcons.home,
            ),
            SizedBox(height: 5),
            IconWidget(
              text: "About",
              icon: FontAwesomeIcons.list,
            ),
            SizedBox(height: 5),
            IconWidget(
              text: "Service",
              icon: FontAwesomeIcons.servicestack,
            ),
            SizedBox(height: 5),
            IconWidget(
              text: "Portfolio",
              icon: FontAwesomeIcons.photoVideo,
            ),
            SizedBox(height: 5),
            IconWidget(
              text: "Team",
              icon: FontAwesomeIcons.teamspeak,
            ),
            SizedBox(height: 5),
            IconWidget(
              text: "Contact",
              icon: FontAwesomeIcons.envelope,
            ),
          ],
        ),
      ),
    );
  }
}
