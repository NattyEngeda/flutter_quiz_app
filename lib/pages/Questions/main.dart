import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/lists.dart';
import 'package:flutter_quiz_app/pages/Questions/subjects.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  // var subjects = List().subject;
  Lists lists = Lists();
  // List subjects = lists.subject;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Questions"),
        backgroundColor: Color.fromARGB(255, 45, 53, 89),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
          child: ListView.builder(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemCount: lists.subject.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Subjects(Subject: lists.subject[index])));
                        },
                        child: Cards(subs: lists.subject[index]['name'])));
              })),
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({Key? key, required this.subs}) : super(key: key);
  final String subs;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 120,
      child: Card(
        borderOnForeground: true,
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            const SizedBox(width: 10),
            Container(
                child: const Icon(
              Icons.numbers,
              size: 30,
            )),
            const SizedBox(
              width: 10,
            ),
            Container(
                child: Text(
              subs,
              style: TextStyle(fontSize: 28),
            )),
          ],
        ),
      ),
    );
  }
}
