import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text('Список'),
            bottom: TabBar(
              tabs: [
                Tab(text: 'Простой список'),
                Tab(text: 'Бесконечный список'),
                Tab(text: 'Степень ^2'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              FirstAppWidget(),
              SecondAppWidget(),
              ThirdAppWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class FirstAppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return ListView(
      children: const[
        Text('0000'),
        Divider(),
        Text('0001'),
        Divider(),
        Text('0002'),
        Divider(),
        Text('0003'),
        Divider(),
        Text('0004'),
        Divider()
      ],
    );
  }
}

class SecondAppWidget extends StatefulWidget {
  @override
  _SecondAppWidgetState createState() => _SecondAppWidgetState();
}

class _SecondAppWidgetState extends State<SecondAppWidget> {
  final List<String> _items = [];

  @override
  void initState() {
    super.initState();
    _items.addAll(List.generate(10, (index) => 'Строка ${index + 1}'));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _items.length + 1,
      itemBuilder: (context, index) {
        if (index == _items.length) {
          _loadMoreItems();
          return CircularProgressIndicator();
        }
        return ListTile(title: Text(_items[index]));
      },
    );
  }

  void _loadMoreItems() {
    Future.delayed(Duration(seconds: 1)).then((_) {
      setState(() {
        _items.addAll(List.generate(10, (index) => 'Строка ${index + _items.length + 1}'));
      });
    });
  }
}


class ThirdAppWidget extends StatefulWidget {
  @override
  _ThirdAppWidgetState createState() => _ThirdAppWidgetState();
}

class _ThirdAppWidgetState extends State<ThirdAppWidget> {
  final List<int> _items = [];

  @override
  void initState() {
    super.initState();
    _items.addAll(List.generate(10, (index) => 2 << index));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _items.length + 1,
      itemBuilder: (context, index) {
        if (index == _items.length) {
          _loadMoreItems();
          return CircularProgressIndicator();
        }
        return ListTile(title: Text('2 ^ ${index + 1} = ${_items[index]}'));
      },
    );
  }

  void _loadMoreItems() {
    Future.delayed(Duration(seconds: 1)).then((_) {
      setState(() {
        _items.addAll(List.generate(10, (index) => 2 << (index + _items.length)));
      });
    });
  }
}