import 'package:base_internationalizing/scope_model_wrapper.dart';
import 'package:base_internationalizing/translations_delegate_base.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TranslationBase.of(context).title),
      ),
      body: Column(
        //mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(TranslationBase.of(context).title),
          ScopedModelDescendant<AppModel>(
              builder: (context, child, model) => MaterialButton(
                    onPressed: () {
                      model.changeDirection();
                    },
                    height: 60.0,
                    color: const Color.fromRGBO(119, 31, 17, 1.0),
                    child: new Text(
                      TranslationBase.of(context).subTitle,
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.3,
                      ),
                    ),
                  ))
        ],
      ),
    );
  }
}
