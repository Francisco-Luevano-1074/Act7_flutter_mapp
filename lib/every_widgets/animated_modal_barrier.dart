import 'dart:async';
import 'package:flutter/material.dart';

class Widget013 extends StatefulWidget {
  const Widget013({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Widget013State();
}

class _Widget013State extends State<Widget013>
    with SingleTickerProviderStateMixin {
  bool _isPressed = false;
  late Widget _animatedModalBarrier;
  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    ColorTween _colorTween = ColorTween(
      begin: Colors.orangeAccent.withOpacity(0.5),
      end: Colors.blueGrey.withOpacity(0.5),
    );

    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _colorAnimation = _colorTween.animate(_animationController);

    _animatedModalBarrier = AnimatedModalBarrier(
      color: _colorAnimation,
      dismissible: true,
    );

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Modal Barrier'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 100.0,
                      width: 250.0,
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                            ),
                            child: const Text('Press'),
                            onPressed: () {
                              setState(() {
                                _isPressed = true;
                              });
                              _animationController.reset();
                              _animationController.forward();
                              Future.delayed(const Duration(seconds: 3), () {
                                setState(() {
                                  _isPressed = false;
                                });
                              });
                            },
                          ),
                          if (_isPressed) _animatedModalBarrier,
                        ],
                      ),
                    ),
                  ],
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
