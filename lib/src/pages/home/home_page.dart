import 'package:flutter/material.dart';
import 'package:flutter_demo_0/src/services/webapi_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    _loadFeed();
  }

  Future<void> _loadFeed() async {
    try {
      final response = await WebApiService().feed();
      debugPrint('Feed response: ${response.data}');
    } on Object catch (error, stackTrace) {
      debugPrint('Unable to load feed: $error');
      debugPrintStack(stackTrace: stackTrace);
    }
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
      ElevatedButton(onPressed: () {}, child: Text("Click Me")),
    ];
  }
}
