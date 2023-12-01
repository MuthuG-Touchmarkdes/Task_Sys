import 'package:flutter/material.dart';

class NavigationService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}
class GO {
  GO._();

  // Go Next page
  static Future<void> next(Widget widget) async {
    BuildContext context=NavigationService.navigatorKey.currentContext!;
    await Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>widget));
  }

  static back({int count=1}) {
    for (var i = 0; i < count; i++) {
      Navigator.pop(NavigationService.navigatorKey.currentContext!);
    }
   
    
  }
  static removePrevious(Widget widget){
    // Get
    BuildContext context=NavigationService.navigatorKey.currentContext!;
    Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => widget),
            (route) => false);
  }
}