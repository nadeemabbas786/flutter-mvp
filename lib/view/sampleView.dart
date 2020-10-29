import 'package:flutter/material.dart';
import 'package:flutter_mvp/presenter/interfaceClass.dart';
import 'package:flutter_mvp/presenter/samplePresenter.dart';

class SampleView extends StatefulWidget {

  @override
  _SampleViewState createState() => _SampleViewState();
}

class _SampleViewState extends State<SampleView> implements InterfaceClass {
  double _counter = 0;

  @override
  Widget build(BuildContext context) {

    SamplePresenter _presenter = new SamplePresenter(this);
    return Scaffold(
      appBar: AppBar(
        title: Text('MVP'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button to perform operation on 5, 21:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Row(
          children: [
            FloatingActionButton(
              onPressed: () {
                _presenter.addition(5, 21);
              },
              tooltip: 'Addition',
              child: Icon(Icons.add),
            ),
            Spacer(),
            FloatingActionButton(
              onPressed: () {
                _presenter.multiplication(5, 21);
              },
              tooltip: 'Multiplication',
              child: Icon(Icons.clear),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  @override
  void updateResultValue(double result) {
    setState(() {
      _counter = result;
    });
  }
}
