import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Template settings'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            print("Menu icon pressed");
          },
        ),
        title: Text(widget.title),
        centerTitle: true,
        actions: <Widget>[
          Icon(Icons.add),
        ],
      ),
      // Columnを使ってボディとボタンを配置する
      body: Column(
        children: [
          // Expandedでリストを縦方向に最大化
          Expanded(
            child: ListView(
              children: const <Widget>[
                ListTile(
                  title: Text(
                    'Default template',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListTile(
                  title: Text('Morning routine'),
                  trailing: Icon(Icons.draw_sharp),
                ),
                ListTile(
                  title: Text(
                    'Your templates',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListTile(
                  title: Text('New template'),
                  trailing: Icon(Icons.draw_sharp),
                ),
                ListTile(
                  title: Text(
                    'Sort and delete',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListTile(
                  title: Text('Sort items'),
                  trailing: Icon(Icons.arrow_forward_outlined),
                ),                
                ListTile(
                  title: Text('Delete template'),
                  trailing: Icon(Icons.delete_forever_sharp),
                ),                
                ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Sleep time',
                        style: TextStyle(),
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: const Text(
                          '24 hour',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  trailing: Icon(Icons.arrow_forward_outlined),
                ),
              ],
            ),
          ),
          // ボタンを下部に配置
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8, // 横幅80%
                height: 50, // ボタンの高さを指定
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlue, // ボタンの背景色を水色に設定
                    onPrimary: Colors.white, // テキストの色を白に設定
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // ボタンの角を丸く
                    ),
                  ),
                  onPressed: () {
                    print("Save template button pressed");
                  },
                  child: const Text(
                    'Save template',
                    style: TextStyle(fontSize: 18), // テキストのフォントサイズ
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

[jsonrpc] e[15:16:18.684]   nil
