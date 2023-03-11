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
        child: Questions(
          quests: questions,
        ),
      ),
    );
  }
}

class Questions extends StatelessWidget {
  const Questions({super.key, required this.quests});
  final Map quests;

  @override
  Widget build(BuildContext context) {
    final List questions = quests['questions'];
    return Container(
      height: 200,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (BuildContext context, int index) {
          // print(answers);
          return Container(
            // height: 300,
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    '${index + 1}. ${questions[index]['question']}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  height: 450,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: GridView.builder(
                    itemCount: quests['questions'][index]['answers'].length,
                    // shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (BuildContext context, int index2) {
                      List answers = quests['questions'][index]['answers'];
                      print(answers[index2]);
                      return Answers(
                        anws: answers[index2],
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Answers extends StatelessWidget {
  const Answers({super.key, required this.anws});
  final Map anws;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        anws['answer'],
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}
