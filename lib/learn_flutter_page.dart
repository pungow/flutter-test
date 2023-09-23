import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Image.asset('assets/image1.jpg'),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.amber,
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(5.0),
            color: Colors.greenAccent,
            width: double.infinity,
            child: const Center(
              child: Text(
                'This is a text widget',
                style: TextStyle(color: Colors.black87),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              debugPrint('Elevated Button');
            },
            child: const Text('Eleveted Button'),
          )
        ],
      ),
    );
  }
}
