Stream<int> countdownStream() =>
    Stream.periodic(Duration(seconds: 1), (x) => x + 1).take(10);

void main() async {
  await for (var i in countdownStream()) {
    print('$i...');
  }
}