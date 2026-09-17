import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MeuApp());
}
class MeuApp extends StatelessWidget{
  const MeuApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Guia de Viagem",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
      ),
      home: const HomePage(),
    );
  }
}
