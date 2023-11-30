import 'package:null_extensions/nullable_extensions.dart';
import 'package:test/test.dart';

void main() {
  test("or",() {
    String? x = null;
    String y = x.or("123");
    expect(y, "123");
    String w = "";
    w = w.or("123");
    expect(w, "");
  });
}
