Stream<int> numberStream = Stream.fromIterable([1, 2, 3, 4, 5]);

Future<void> useAwaitFor() async {
  await for (int number in numberStream) {
    print('await for: $number');
  }
}

void useListen() {
  numberStream.listen((number) {
    print('listen: $number');
  });
}

void main() async {
  await useAwaitFor();
  useListen();
}