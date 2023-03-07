import 'package:flutter/material.dart';
import 'package:todov2/bases/buttons_base.dart';
import 'package:todov2/bases/columns.dart';
import 'package:todov2/bases/container.dart';
import 'package:todov2/bases/image_base.dart';
import 'package:todov2/bases/layout_builder_base.dart';
import 'package:todov2/bases/rows.dart';
import 'package:todov2/bases/text_base.dart';
import 'package:todov2/ejercicios/Ajedrez.dart';
import 'package:todov2/ejercicios/BodySection.dart';
import 'package:todov2/ejercicios/ImageSection.dart';
import 'package:todov2/ejercicios/TitleSection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
       Scaffold(
          appBar: AppBar(
            title: const Text("To Do"),
            titleSpacing: 100,
          ),
          body:ButtonBase(),
       )
    );
  }
}
