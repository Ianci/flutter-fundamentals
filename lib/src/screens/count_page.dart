import 'package:flutter/material.dart';

class CountPage extends StatefulWidget {
  const CountPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CountState();
  
}
// _ makes the class private
class _CountState extends State<CountPage> {
  final TextStyle styleText = const TextStyle( fontSize: 32, color: Colors.deepOrangeAccent);
  int  _count = 10;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My app bar'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Clicks', style: styleText ),
            Text('$_count')
          ],
        )
      ),
      floatingActionButton: _createButtons()
    );
  }
  Widget _createButtons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children:  <Widget>[
      const SizedBox(width: 33.0),
      FloatingActionButton( child: const Icon(Icons.add_a_photo), onPressed: _add ),
      const Expanded(child: SizedBox()),
      FloatingActionButton( child: const Icon(Icons.add_a_photo), onPressed: _substract),
      FloatingActionButton( child: const Icon(Icons.add_a_photo), onPressed: _restart)
    ],
  );
}
  void _add(){
    setState(() {
      _count++;
    });
  }
  void _substract(){
    if(_count <= 0){
      return ;
    }
    setState(() {
      _count--;
    });
  }
  void _restart(){
    setState(() {
      _count = 0;
    });
  }
}

