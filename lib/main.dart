import 'package:flutter/material.dart';
import 'package:responsive_app/orientation_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive App Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    bool isDesktop(BuildContext context) =>MediaQuery.of(context).size.width>=600;
    bool isMobile(BuildContext context) =>MediaQuery.of(context).size.width<600;
    return Scaffold(
      body: Row(
        children: [
          if(isDesktop(context))
          Container(
            width: 200,
            color: Colors.amber,
            child:const Center(child:  Text("Side Bar")),
          ),
             Expanded(
               child: Container(
                         width: 200,
                         color: Colors.red,
                         child:const Center(child:  Text("Content")),
                       ),
             ),
        ],
      ),
      
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Responsive App Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Welcome to My App!',
//               style: TextStyle(fontSize: screenWidth < 600 ? 18.0 : 24.0),
//             ),
//             SizedBox(height: 20.0),
//             Container(
//               width: screenWidth < 600 ? 200.0 : 300.0,
//               height: 100.0,
//               color: Colors.blue,
//               alignment: Alignment.center,
//               child: Text(
//                 'Responsive Container',
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
