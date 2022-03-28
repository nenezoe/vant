class CardItem {
  late String urlImage;
  late String title;
  // late  String subtitle;

  CardItem({
    required this.urlImage,
    required this.title,
    // required this.subtitle
  });
}

List<CardItem> items = [
  CardItem(
    urlImage: 'assets/bank_transfer.jpg',
    title: "Withdraw to bank",
  ),
  CardItem(
    urlImage: 'assets/share_payment.jpg',
    title: "Withdraw to bank",
  ),
  CardItem(
    urlImage: 'assets/investment.jpg',
    title: "Withdraw to bank",
  )
];
