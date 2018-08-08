import 'package:base_internationalizing/home.dart';
import 'package:base_internationalizing/scope_model_wrapper.dart';
import 'package:base_internationalizing/translations_delegate_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:scoped_model/scoped_model.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<AppModel>(
        builder: (context, child, model) => MaterialApp(
              locale: model.appLocal,
              localizationsDelegates: [
                const TranslationBaseDelegate(),
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              supportedLocales: [
                const Locale('ar', ''), // Arabic
                const Locale('en', ''), // English
              ],
              debugShowCheckedModeBanner: false,
              //theme: hrTheme,
              title: "Arabic Flutter",
              home: new Home(),
            ));
  }
}
