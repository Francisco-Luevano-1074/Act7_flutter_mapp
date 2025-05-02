import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Widget063 extends StatefulWidget {
  const Widget063({Key? key}) : super(key: key);

  @override
  Widget063State createState() => Widget063State();
}

class Widget063State extends State<Widget063> {
  String? _currentSelection;
  final Map<String, Color> _optionColors = {
    'Flutter': Colors.blue,
    'Mapp': Colors.green,
    'YouTube': Colors.red,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cupertino Segmented Control'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CupertinoSegmentedControl<String>(
              groupValue: _currentSelection,
              padding: const EdgeInsets.all(8),
              children: {
                for (var entry in _optionColors.entries)
                  entry.key: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      entry.key,
                      style: TextStyle(
                        color: _currentSelection == entry.key
                            ? Colors.white
                            : entry.value,
                      ),
                    ),
                  ),
              },
              selectedColor: _currentSelection != null
                  ? _optionColors[_currentSelection]
                  : Colors.grey,
              unselectedColor: Colors.white,
              borderColor: CupertinoColors.inactiveGray,
              onValueChanged: (String value) {
                setState(() {
                  _currentSelection = value;
                });
              },
            ),
          ),
          const SizedBox(height: 40),
          if (_currentSelection != null) ...[
            Icon(
              _getSelectionIcon(),
              size: 60,
              color: _optionColors[_currentSelection],
            ),
            const SizedBox(height: 20),
            Text(
              'Has seleccionado:',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              _currentSelection!,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: _optionColors[_currentSelection],
              ),
            ),
          ] else
            Text(
              'Selecciona una opción',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.grey,
                  ),
            ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: CupertinoColors.systemGrey,
              ),
              onPressed: () => Navigator.pop(context),
              child: const Text('Volver al inicio'),
            ),
          ),
        ],
      ),
    );
  }

  IconData _getSelectionIcon() {
    switch (_currentSelection) {
      case 'Flutter':
        return Icons.flutter_dash;
      case 'Mapp':
        return Icons.map;
      case 'YouTube':
        return Icons.play_circle_fill;
      default:
        return Icons.help_outline;
    }
  }
}
