class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({
    required this.image,
    required this.title,
    required this.discription,
  });
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'STRESS LESS.',
      image: 'assets/images/onbordingimages/image 239.png',
      discription: "Make mindfulness a daily habit and be kind to your mind."),
  UnbordingContent(
      title: 'RELAX MORE.',
      image: 'assets/images/onbordingimages/image 239 (1).png',
      discription: "Unwind and find serenity in a guided meditation sessions"),
  UnbordingContent(
      title: 'SLEEP LONGER.',
      image: 'assets/images/onbordingimages/image 239 (2).png',
      discription: "Calm racing mind and prepare your body for deep sleep."),
  UnbordingContent(
      title: 'LIVE BETTER.',
      image: 'assets/images/onbordingimages/image 239 (4).png',
      discription: "Invest in personal sense of inner peace and balance."),
];
