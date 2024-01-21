import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/dash_board_view.dart';

void main() {
  runApp(const ResponsiveDashBoard ());
}

class ResponsiveDashBoard  extends StatelessWidget {
  const ResponsiveDashBoard ({super.key});

  // This widget is the root of your application. 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ResponsiveDashBoard ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const DashBoardView() ,
    );
  }
}