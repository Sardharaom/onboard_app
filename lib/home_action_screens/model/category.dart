class Category {
  final String icon, title;

  Category({required this.icon, required this.title});
}

List<Category> demo_categories = [
  Category(
    icon: "assets/icons/frock.png",
    title: "Dress",
  ),
  Category(
    icon: "assets/icons/shirt.png",
    title: "Shirt",
  ),
  Category(
    icon: "assets/icons/pant.png",
    title: "Pants",
  ),
  Category(
    icon: "assets/icons/tshirt.png",
    title: "Tshirt",
  ),
];
