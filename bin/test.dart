import 'package:test/test.dart';
import 'main.dart';

void main() {

  test("test 1", () {
    expect(incrementToTop([3, 10, 3]), 14);
    expect(incrementToTop([3, 4, 3]), 2);
  });
  test("test 2", () {
    expect(count([5, 9, 10, 3, "J", "A", 4, 8, 5]), 1);
    expect(count(["A", "A", "K", "Q", "Q", "J"]), -6);
  });
}
