import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _numOneTecController= TextEditingController();
  final TextEditingController _numTwoTecController= TextEditingController();
  double _result= 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body:  Padding(
        padding:  const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _numOneTecController,
              decoration: const InputDecoration(
                hintText: 'Number 1',
                labelText: 'Number 1'
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: _numTwoTecController,
              decoration: const InputDecoration(
                  hintText: 'Number 2',
                labelText: 'Number 2'
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              spacing:10 ,
              children: [
                ElevatedButton.icon(onPressed: (){_add();}, icon: const Icon(Icons.add),label: const Text('add'),),
                ElevatedButton.icon(onPressed: (){_sub();}, icon: const Icon(Icons.remove),label: const Text('sub'),),
                ElevatedButton.icon(onPressed: _multiply, icon: const Icon(Icons.star),label: const Text('multiply'),),
                ElevatedButton.icon(onPressed: _divide, icon: const Icon(CupertinoIcons.divide),label: const Text('Divide'),),

              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text("Result: $_result"),

          ],
        ),
      ),
    );
  }
  void _add(){
    double numberOne=double.tryParse(_numOneTecController.text)?? 0;
    double numberTwo=double.tryParse(_numTwoTecController.text)?? 0;
    _result=numberOne+numberTwo;
    setState(() {

    });
  }
  void _sub(){
    double numberOne=double.tryParse(_numOneTecController.text)?? 0;
    double numberTwo=double.tryParse(_numTwoTecController.text)?? 0;
    _result=numberOne-numberTwo;
    setState(() {

    });

  }
  void _multiply(){
    double numberOne=double.tryParse(_numOneTecController.text)?? 0;
    double numberTwo=double.tryParse(_numTwoTecController.text)?? 0;
    _result=numberOne*numberTwo;
    setState(() {

    });

  }
  void _divide(){
    double numberOne=double.tryParse(_numOneTecController.text)?? 0;
    double numberTwo=double.tryParse(_numTwoTecController.text)?? 0;
    _result=numberOne/numberTwo;
    setState(() {

    });

  }

  @override
  void dispose() {
    _numOneTecController.dispose();
    _numTwoTecController.dispose();
    super.dispose();
  }
}
