class QuestionPageModel {
  String question;
  List<String> buttonText; // No need to initialize with []

  QuestionPageModel({
    required this.question,
    this.buttonText = const [], // Default value as empty list
  });
}

List<QuestionPageModel> questionConten = [
  QuestionPageModel(
    buttonText: [
      'Relax More',
      'Sleep Better',
      'Learn to Meditate',
    ],
    question: 'What would you\n like to achieve?',
  ),
  QuestionPageModel(
    buttonText: [
      'Restless',
      'Anxiety',
      'Difficulty to concentrate',
      'Difficulty falling asleep'
    ],
    question: 'Do you experience \n any of the following?',
  ),
  QuestionPageModel(
    buttonText: [
      'Yes',
      'No',
      'A bit',
    ],
    question: 'Do you have experience \n with meditation?',
  ),
  QuestionPageModel(
    question: 'How many mindful minutes\n would you like to have in a day?',
  ),
  QuestionPageModel(
    question: 'Choose a few of the sounds you find relaxing',
  ),
];
