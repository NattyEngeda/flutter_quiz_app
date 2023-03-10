class Lists {
  List<Map> subject = [
    {
      'id': 1,
      'name': 'Maths',
    },
    {
      'id': 2,
      'name': 'Biology',
    },
    {
      'id': 3,
      'name': 'Physics',
    },
    {
      'id': 4,
      'name': 'Chemistry',
    },
  ];

  List<Map> questions = [
    {
      'id': 1,
      'subject': 'Maths',
      'questions': [
        {
          'id': 1,
          'question': 'What is 1 + 1',
          'answers': [
            {'id': 1, 'answer': '1', 'correct': false},
            {'id': 2, 'answer': '2', 'correct': true},
            {'id': 3, 'answer': '3', 'correct': false},
            {'id': 4, 'answer': '4', 'correct': false},
          ]
        },
        {
          'id': 2,
          'question': 'What is 13 + 3',
          'answers': [
            {'id': 1, 'answer': '2', 'correct': false},
            {'id': 2, 'answer': '34', 'correct': false},
            {'id': 3, 'answer': '27', 'correct': false},
            {'id': 4, 'answer': '16', 'correct': true},
          ]
        },
      ]
    },
    {
      'id': 3,
      'subject': 'Biology',
      'questions': [
        {
          'id': 1,
          'question': 'What is the study of matter and living things',
          'answers': [
            {'id': 1, 'answer': 'Biology', 'correct': true},
            {'id': 2, 'answer': 'Chemistry', 'correct': false},
            {'id': 3, 'answer': 'Physics', 'correct': false},
            {'id': 4, 'answer': 'Geography', 'correct': false},
          ]
        },
        {
          'id': 2,
          'question': 'What is the study of micro organisms',
          'answers': [
            {'id': 1, 'answer': 'Geonology', 'correct': false},
            {'id': 2, 'answer': 'Miro-Biology', 'correct': true},
            {'id': 3, 'answer': 'Zoology', 'correct': false},
            {'id': 4, 'answer': 'Mitochondria', 'correct': false},
          ]
        },
      ]
    },
    {
      'id': 2,
      'subject': 'Physics',
      'questions': [
        {
          'id': 1,
          'question': 'What is the study of matter and living things',
          'answers': [
            {'id': 1, 'answer': 'Biology', 'correct': true},
            {'id': 2, 'answer': 'Chemistry', 'correct': false},
            {'id': 3, 'answer': 'Physics', 'correct': false},
            {'id': 4, 'answer': 'Geography', 'correct': false},
          ]
        },
        {
          'id': 2,
          'question': 'What is the study of micro organisms',
          'answers': [
            {'id': 1, 'answer': 'Geonology', 'correct': false},
            {'id': 2, 'answer': 'Miro-Biology', 'correct': true},
            {'id': 3, 'answer': 'Zoology', 'correct': false},
            {'id': 4, 'answer': 'Mitochondria', 'correct': false},
          ]
        },
      ]
    },
    {
      'id': 2,
      'subject': 'Chemistry',
      'questions': [
        {
          'id': 1,
          'question': 'What is the study of matter and living things',
          'answers': [
            {'id': 1, 'answer': 'Biology', 'correct': true},
            {'id': 2, 'answer': 'Chemistry', 'correct': false},
            {'id': 3, 'answer': 'Physics', 'correct': false},
            {'id': 4, 'answer': 'Geography', 'correct': false},
          ]
        },
        {
          'id': 2,
          'question': 'What is the study of micro organisms',
          'answers': [
            {'id': 1, 'answer': 'Geonology', 'correct': false},
            {'id': 2, 'answer': 'Miro-Biology', 'correct': true},
            {'id': 3, 'answer': 'Zoology', 'correct': false},
            {'id': 4, 'answer': 'Mitochondria', 'correct': false},
          ]
        },
      ]
    },
  ];
}
