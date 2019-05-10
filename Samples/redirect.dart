void main() {
  var rect = new Rectangle(1,1,5,10);
  print("${rect.x},${rect.y},${rect.width},${rect.height}");
}

class Shape {
  final num x;
  final num y;
  Shape(this.x, this.y){ print("Super Constructor"); }
}

class Rectangle extends Shape {
  final num width;
  final num height;

  // スーパークラスへリダイレクト
  Rectangle(x,y,this.width,this.height):super(x,y) {
    // ここでsuper(x,y);するとエラー
    print("Sub Constructor");
  }
}
