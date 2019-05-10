void main() {
  var singleton1 = new Singleton();
  print(singleton1.str);
  var singleton2 = new Singleton();
  print(singleton1 == singleton2);
}

class Singleton {
  static var _instance;
  String str;

  //factoryコンストラクタ
  factory Singleton() {
    if(_instance==null) { _instance = new Singleton._internal(); }
    return _instance;
  }

  //内部からの呼び出し用namedコンストラクタ
  Singleton._internal() { str = "singleton."; }
}
