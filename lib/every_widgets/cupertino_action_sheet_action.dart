import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Widget051 extends StatefulWidget {
  const Widget051({Key? key}) : super(key: key);

  @override
  State<Widget051> createState() => _Widget051State();
}

class _Widget051State extends State<Widget051> {
  @override
  Widget build(BuildContext context) {
    // Usamos MaterialApp como padre, pero mantenemos los componentes Cupertino
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cupertino Action Sheet'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoButton(
              color: CupertinoColors.activeBlue,
              child: const Text('Mostrar ActionSheet'),
              onPressed: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (BuildContext context) => CupertinoActionSheet(
                    title: const Text('Flutter Mapp'),
                    message: const Text('Selecciona una opción'),
                    actions: <CupertinoActionSheetAction>[
                      CupertinoActionSheetAction(
                        child: const Text('Opción 1'),
                        onPressed: () {
                          Navigator.pop(context);
                          _showSnackBar(context, 'Opción 1 seleccionada');
                        },
                      ),
                      CupertinoActionSheetAction(
                        child: const Text('Opción 2'),
                        onPressed: () {
                          Navigator.pop(context);
                          _showSnackBar(context, 'Opción 2 seleccionada');
                        },
                      ),
                    ],
                    cancelButton: CupertinoActionSheetAction(
                      child: const Text('Cancelar'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 50),
              ),
              onPressed: () => Navigator.pop(context),
              child: const Text('Volver al inicio'),
            ),
          ],
        ),
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}
