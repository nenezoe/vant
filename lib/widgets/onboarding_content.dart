class UnboardingContent {
  String image;
  String title;
  // String discription;

  UnboardingContent({
    required this.image,
    required this.title,
  });
}

List<UnboardingContent> contents = [
  UnboardingContent(
      title: "Fixed Deposit Savings", image: 'assets/earn_as_you_save.png'),
  UnboardingContent(title: "Fixed Deposit Savings", image: "assets/Group1.jpg"),
];
