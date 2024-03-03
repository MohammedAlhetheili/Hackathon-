class BoardingModel {
  final String image, title, description;

  BoardingModel({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<BoardingModel> contents = [
  BoardingModel(
      image: 'assets/images/boarding2.png',
      title: 'Investment Reports',
      description:
          "Receive custom finance reports for informed control. Manage your finances confidently!"),
  BoardingModel(
      image: 'assets/images/boarding3.png',
      title: 'Best invest percentage',
      description:
          "Access top market savings and investment rates through our partners, including banks and portfolios"),
  BoardingModel(
      image: 'assets/images/boarding4.png',
      title: 'More savings more rewards',
      description:
          "Save to earn points, unlock discounts, and enjoy perks. Begin earning rewards now!"),
  BoardingModel(
      image: 'assets/images/boarding1.png',
      title: 'Secure your retirement',
      description:
          "Enhance retirement savings and income with premium investment plans. Secure your future today!"),
];
