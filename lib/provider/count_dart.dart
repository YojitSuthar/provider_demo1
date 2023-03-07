import 'package:flutter/foundation.dart';

// create the provider
class Count with ChangeNotifier {
    int _count=0;
    int get count=>_count;

    void setcount(){
      _count++;
      notifyListeners();
    }
}