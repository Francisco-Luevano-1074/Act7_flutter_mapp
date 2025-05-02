import 'package:flutter/material.dart';

class Widget037 extends StatelessWidget {
  const Widget037({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar Demo'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.orangeAccent,
                    radius: 55,
                    backgroundImage: AssetImage('assets/icon/blue.jpg'),
                    child: Text('Hi'),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'CircleAvatar Demo',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Volver al inicio'),
            ),
          ),
        ],
      ),
    );
  }
}
