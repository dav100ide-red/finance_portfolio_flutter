import 'dart:async';

class MockService {
  Stream<List<double>> getStreamItems() async* {
    double counter = 0;
    while (counter < 20) {
      await Future.delayed(const Duration(seconds: 2));
      yield List.generate(5, (index) => counter++);
    }
  }
}
