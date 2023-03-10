import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/lists.dart';

class Subjects extends StatefulWidget {
  const Subjects({super.key, required this.Subject});
  final Map Subject;
  @override
  State<Subjects> createState() => _SubjectsState();
}

class _SubjectsState extends State<Subjects> {
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    double _width = _size.width;
    double _height = _size.height;
    Lists lists = Lists();
    print(widget.Subject['id'] - 1);
    Map questions = lists.questions[widget.Subject['id'] - 1];

    print(_width);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.Subject['name']),
        backgroundColor: Color.fromARGB(255, 45, 53, 89),
      ),
      body: Container(
        width: _width,
        height: _height,
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Questions(),
      ),
    );
  }
}

class Questions extends StatelessWidget {
  const Questions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              "1. What is the capital of India?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Answers();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Answers extends StatelessWidget {
  const Answers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
