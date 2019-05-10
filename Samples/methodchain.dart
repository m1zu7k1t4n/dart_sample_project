class CTest {
  int __number = 0;

  CTest() {
    print("Call Ctest constructor");
  }

  void info() {
    print(__number);
  }

  CTest add() {
    __number++;
    return this;
  }
}

main(List<String> args) {
  var inst = new CTest();
  var new_inst = inst.add().add();
  inst.info();
  new_inst.info();
  inst.add().info();
  new_inst.add().info();
  print(inst == new_inst);
  var inst2 = new CTest();
  print(inst == inst2);
}
