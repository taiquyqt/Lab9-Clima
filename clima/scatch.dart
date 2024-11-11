void main() {
  performTasks();
}

void performTasks() async {
  task1();

  // Đợi task2 hoàn tất và lưu kết quả vào biến
  String task2Result = await task2();

  // Gọi task3 với dữ liệu từ task2
  task3(task2Result);
}

void task3(String task2result) {}

void task1() {
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration threeSeconds = Duration(seconds: 3);

  // Initialize result with a default value.
  String result = 'default';

  await Future.delayed(threeSeconds, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });

  return result;
}
