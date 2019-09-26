import 'package:appcenter_test_app/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// f635308d-3e24-4c5c-b0be-f08855ad3dfa ANDROID_GUID
const String AndroidGUID = 'f635308d-3e24-4c5c-b0be-f08855ad3dfa';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final isIos = defaultTargetPlatform == TargetPlatform.iOS;

//    var appSecret = isIos ? '' : AndroidGUID;
//    AppCenter.start(appSecret, [AppCenterCrashes.id, AppCenterAnalytics.id]);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
