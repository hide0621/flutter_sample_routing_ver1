import 'package:flutter/material.dart';

void main() {
  runApp(const FirstScreen());
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('次へ'),
      onPressed: () {
        // final navigatorState = Navigator.of(context);
        // final route = MaterialPageRoute(
        //   builder: (context) => const SecondScreen(),
        // );
        // navigatorState.push(route);

        /// 上記を簡略化した一般的な記述の方法
        Navigator.of(context).push(MaterialPageRoute(
          builder: (_) => const SecondScreen(),
        ));
      },
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('戻る'),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }
}
