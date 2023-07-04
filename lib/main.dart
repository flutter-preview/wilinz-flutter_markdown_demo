import 'package:chinese_font_library/chinese_font_library.dart';
import 'package:flutter/material.dart';
import 'package:markdown_widget/config/markdown_generator.dart';
import 'package:markdown_widget/widget/markdown.dart';

import 'latex.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        useMaterial3: true,
        textTheme: Theme.of(context).textTheme.useSystemChineseFont(),
      ),
      home: MyHomePage(title: "title"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  String data = """冒泡排序（Bubble Sort）是一种简单的排序算法，它重复地遍历要排序的序列，一次比较两个元素，如果他们的顺序错误就交换位置，直到没有任何需要交换的元素。这个算法之所以被称为冒泡排序，是因为越大的元素会经由交换慢慢“浮”到数列的顶端。

以下是C++语言的冒泡排序的实现：

![screenshot](https://pics3.baidu.com/feed/4afbfbedab64034f0b4717ee984e123d08551ded.jpeg@f_auto?token=72c28c009517b7228bb9524dfbdd2f5b)

```cpp
#include <iostream>
using namespace std;

void bubbleSort(int arr[], int n) {
    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                // 交换arr[j]和arr[j+1]
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}

// 测试
int main() {
    int arr[] = { 64, 34, 25, 12, 22, 11, 90 };
    int n = sizeof(arr) / sizeof(arr[0]);
    bubbleSort(arr, n);
    cout << "排序后的数组：";
    for (int i = 0; i < n; i++) {
        cout << arr[i] << " ";
    }
    return 0;
}
```

运行结果为：11 12 22 25 34 64 90。

上述代码中，`bubbleSort`函数使用嵌套的`for`循环实现了冒泡排序算法。外层循环通过`i`控制迭代次数，内层循环通过`j`遍历未排序部分的数组元素，并进行比较和交换。最终，数组会被依次比较和交换，使得最小的元素“冒泡”到数组的最前面。

在`main`函数中，我们定义了一个测试数组`arr`，并通过`sizeof(arr) / sizeof(arr[0])`计算出数组的长度`n`。然后，我们调用`bubbleSort`函数对数组进行冒泡排序。最后，我们使用`for`循环遍历排序后的数组，并输出结果。

冒泡排序的时间复杂度为O(n²)。泰勒公式是数学中的一个重要公式，用于将一个函数在某一点附近展开成无穷级数的形式。它由苏格兰数学家布鲁尔·塞缪尔·泰勒于1712年提出，并在其著作《算术的方法论》中进行了详细阐述。

泰勒公式的表述如下：

设\$f(x)\$在\$x=a\$处有\$n\$阶连续导数，则对于\$x\$在\$a\$附近，
\$\$
f(x) = f(a) + f'(a)(x-a) + \\frac{1}{2!}f''(a)(x-a)^2 + \\frac{1}{3!}f'''(a)(x-a)^3 + \\cdots + \\frac{1}{n!}f^{(n)}(a)(x-a)^n + R_n
\$\$
其中，\$R_n\$为泰勒级数的剩余项，在\$a\$附近满足

\$\$
R_n(x) = \\frac{1}{(n+1)!}f^{(n+1)}(c)(x-a)^{n+1}
\$\$
其中，\$c\$是在\$a\$和\$x\$之间某个值。

泰勒公式的基本思想是通过函数在某一点的值及其各阶导数来逼近函数在该点附近的表达式。当\$n\$趋向于正无穷时，泰勒公式变为泰勒级数，可以逼近函数在整个定义域上的表达式。

泰勒公式在数学分析、物理学、工程学等领域都有广泛的应用，通过利用泰勒公式可以对函数进行近似计算、解决一些特殊的数学问题，以及在数值计算中进行函数插值等操作。""";
  final _c = TextEditingController();

  @override
  void initState() {
    super.initState();
    _c.text = data;
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _c,
                decoration: InputDecoration(
                  labelText: 'Text',
                  border: OutlineInputBorder(),
                ),
                maxLines: 15,
                onChanged: (text) {
                  // Save the text to SharedPreferences
                  setState(() {

                  });
                },
              ),
              SizedBox(height:16),
              Expanded(
                child: Card(
                    child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: MarkdownWidget(
                    data: _c.text,
                    markdownGeneratorConfig: MarkdownGeneratorConfig(
                        generators: [latexGenerator],
                        inlineSyntaxList: [LatexSyntax()]),
                  ),
                )),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
