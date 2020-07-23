
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/home_temp.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes Flutter',
      debugShowCheckedModeBanner: false,//quitar banner debug
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English, no country code
        const Locale('es', 'ES'), // Spanish
        const Locale.fromSubtags(languageCode: 'zh'), // Chinese *See Advanced Locales below*
        // ... other locales the app supports
      ],
      //home: HomePage()
      initialRoute: '/',
      //metodo para acceder a rutas
      routes: getApplicationRoutes(),
      /*Si no esta definida en el anterior se dispara el onGenerateRoute*/
      onGenerateRoute: (settings) {
        print('Ruta llamada: ${settings.name}');

        return MaterialPageRoute(
          builder: (context) => Alertpage(),
        );
      },
    );
  }
}
