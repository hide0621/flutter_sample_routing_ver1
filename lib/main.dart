import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: FirstScreen(),
  ));
}

// アプリ起動時に表示されるFirstScreenウィジェット
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBarは画面上部のヘッダー部分となるウィジェット
      appBar: AppBar(
        title: const Text('FirstScreen'),
      ),
      body: Center(
        // ElevatedButtonはマテリアルデザインのボタンウィジェット
        // MaterialPageRouteは実行するプラットフォームに適した画面遷移アニメーションを提供するRoute
        child: ElevatedButton(
          child: const Text('次へ'),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute<void>(
              builder: (_) => const SecondScreen(),
            ));
          },
        ),
      ),
    );
  }
}

// 画面遷移先として用意したSecondScreenウィジェット
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SecondScreen'),
        ),
        body: Center(
            child: ElevatedButton(
          child: const Text('戻る'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )));
  }
}
