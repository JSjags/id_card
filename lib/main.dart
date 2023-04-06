import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomeScreen(),
));

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int age = 23;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My ID Card",
          style: TextStyle(
              fontFamily: "TiltWarp"
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
              Center(
                child: const CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/avatar.jpg"
                  ),
                  radius: 50.0,
                ),
              ),
            Divider(
              height: 60.0,
              color: Colors.grey[900],
            ),
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.deepPurple,
                letterSpacing: 2.0,
                  fontFamily: "TiltWarp"
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              "Jesse Abuaja",
              style: TextStyle(
                  color: Colors.amber,
                  letterSpacing: 2.0,
                  fontFamily: "Inter",
                fontWeight: FontWeight.bold,
                fontSize: 25.0
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              "AGE",
              style: TextStyle(
                  color: Colors.deepPurple,
                  letterSpacing: 2.0,
                  fontFamily: "TiltWarp"
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              "$age",
              style: TextStyle(
                  color: Colors.amber,
                  letterSpacing: 2.0,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              "OCCUPATION",
              style: TextStyle(
                  color: Colors.deepPurple,
                  letterSpacing: 2.0,
                  fontFamily: "TiltWarp"
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              "Full Stack Programmer",
              style: TextStyle(
                  color: Colors.amber,
                  letterSpacing: 2.0,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              "CONTACT DETAILS",
              style: TextStyle(
                  color: Colors.deepPurple,
                  letterSpacing: 2.0,
                  fontFamily: "TiltWarp"
              ),
            ),
            SizedBox(height: 20.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10,),
                Text("+2347045621414",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 18.0,
                  fontFamily: "Inter",
                  letterSpacing: 1.0,
                ),)
              ],
            ),
            SizedBox(height: 10.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10,),
                Text("jesseabuaja@hotmail.com",
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 18.0,
                    fontFamily: "Inter",
                    letterSpacing: 1.0,
                  ),)
              ],
            ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              age ++;
            });
          },
          backgroundColor: Colors.deepPurple,
          child: Text("+", style: TextStyle(
              fontSize: 40.0,
              fontFamily: "TiltWarp"
          ),)
      ),
    );
  }
}


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
