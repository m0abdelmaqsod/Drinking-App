class DrinckModel {
  final String image;
  final String name;
  final String title;
  final String price;

  DrinckModel({
    required this.image,
    required this.name,
    required this.title,
    required this.price,
  });

  static List<DrinckModel> drincks = [
    DrinckModel(
      image: "images/Chocolate.png",
      name: "Chocolate Deink",
      title: "10 Cups of defferent flavours",
      price: "20",
    ),
    DrinckModel(
      image: "images/Banana.png",
      name: "Banana",
      title: "20 Cups of defferent flavours",
      price: "50",
    ),
    DrinckModel(
      image: "images/Brownie Island.png",
      name: "Brownie Island",
      title: "15 Cups of defferent flavours",
      price: "10",
    ),
    DrinckModel(
      image: "images/Salted Caramel.png",
      name: "Salted Caramel",
      title: "8 Cups of defferent flavours",
      price: "10",
    ),
    DrinckModel(
      image: "images/Banana.png",
      name: "Banana",
      title: "3 Cups of defferent flavours",
      price: "70",
    ),
    DrinckModel(
      image: "images/Brownie Island.png",
      name: "Brownie Island",
      title: "30 Cups of defferent flavours",
      price: "40",
    ),
    DrinckModel(
      image: "images/Strawberry.png",
      name: "Strawberry",
      title: "25 Cups of defferent flavours",
      price: "45",
    ),
    DrinckModel(
      image: "images/Chocolate.png",
      name: "Chocolate",
      title: "10 Cups of defferent flavours",
      price: "10",
    ),
  ];
}
