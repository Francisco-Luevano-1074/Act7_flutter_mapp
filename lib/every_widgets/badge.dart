import 'package:flutter/material.dart';

class Widget024B extends StatelessWidget {
  const Widget024B({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Badge Demo'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Badge(
                backgroundColor: Colors.red,
                alignment: AlignmentDirectional.topEnd,
                largeSize: 20,
                label: const Text(
                  '45',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Icon(
                  Icons.notifications_active_rounded,
                  size: 50,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Volver al inicio'),
            ),
          ),
        ],
      ),
    );
  }
}
