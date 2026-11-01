import 'package:flutter/material.dart';
import 'package:flutter_demo_0/src/services/webapi_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  VoidCallback? get _handleClick => null;

  void initSate() {
    super.initState();
    WebApiService().feed();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Card(
            child: Container(
              padding: const EdgeInsets.all(32.0),
              height: 320,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ..._buildTextFields(),
                  SizedBox(height: 32),
                  ..._buildButtons(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<TextField> _buildTextFields() {
    return [
      TextField(decoration: InputDecoration(labelText: "Field 1")),
      TextField(decoration: InputDecoration(labelText: "Field 2")),
    ];
  }

  List<ElevatedButton> _buildButtons() { 
    return [
      ElevatedButton(onPressed: _handleClick, child: Text("Click Me")),
    ];
  }
}
