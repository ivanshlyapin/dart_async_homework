import 'dart:async';

void main() {
final controller = StreamController<String>();

  controller.stream.listen(
    (data) => print('Data: $data'),
    onDone: () => print('Стрім завершено'),
  );

  controller.add('Hello');
  controller.add('World');
  controller.add('Dart');

  controller.close();
}