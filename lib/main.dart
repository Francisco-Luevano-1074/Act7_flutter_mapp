import 'package:flutter/material.dart';
import 'package:flutter_mapp_1074/every_widgets/animated_modal_barrier.dart';
import 'package:flutter_mapp_1074/every_widgets/badge.dart';
import 'package:flutter_mapp_1074/every_widgets/circle_avatar.dart';
import 'package:flutter_mapp_1074/every_widgets/cupertino_action_sheet_action.dart';
import 'package:flutter_mapp_1074/every_widgets/cupertino_segmented_control.dart';
import 'package:flutter_mapp_1074/every_widgets/decorated_box.dart';
import 'package:flutter_mapp_1074/every_widgets/pantalla_inicial.dart';

void main() => runApp(MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaUno(),
        '/widget013': (context) => const Widget013(),
        '/widget024b': (context) => const Widget024B(),
        '/widget037': (context) => const Widget037(),
        '/widget051': (context) => const Widget051(),
        '/widget063': (context) => const Widget063(),
        '/widget080': (context) => const Widget080(),
      },
    );
  }
}
