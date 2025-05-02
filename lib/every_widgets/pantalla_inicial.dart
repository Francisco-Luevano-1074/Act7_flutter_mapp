import 'package:flutter/material.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0b6932),
        title: const Text(
          'Menú Principal',
          style: TextStyle(
            color: Color(0xffdfdfdf),
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/widget013');
              },
              child: const Text('Widget 013 (Animated Modal Barrier)'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/widget024b');
              },
              child: const Text('Widget 024B (Badge)'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/widget037');
              },
              child: const Text('Widget 037 (Circle Avatar)'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/widget051');
              },
              child: const Text('Widget 051 (Cupertino Action Sheet)'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/widget063');
              },
              child: const Text('Widget 063 (Cupertino Segmented Control)'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/widget080');
              },
              child: const Text('Widget 080 (Cupertino Action Sheet)'),
            ),
          ),
        ],
      ),
    );
  }
}
