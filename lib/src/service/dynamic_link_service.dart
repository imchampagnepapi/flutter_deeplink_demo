import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';

/// [DynamicLinkService]
class DynamicLinkService{
  static final DynamicLinkService _singleton = DynamicLinkService._internal();
  DynamicLinkService._internal();
  static DynamicLinkService get instance => _singleton;

  // Create new dynamic link
  void createDynamicLink() async{
    final dynamicLinkParams = DynamicLinkParameters(
      link: Uri.parse("https://imchampagnepapi.page.link.com/test1"),
      uriPrefix: "https://imchampagnepapi.page.link",
      androidParameters: const AndroidParameters(packageName: "com.sarj33t.flutter_deeplink_demo"),
      iosParameters: const IOSParameters(
          bundleId: "com.sarj33t.flutterDeeplinkDemo",
        appStoreId: "123456789"
      ),
    );
    final dynamicLink = await FirebaseDynamicLinks.instance.buildShortLink(dynamicLinkParams);
    debugPrint("${dynamicLink.shortUrl}");
  }
}