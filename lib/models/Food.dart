class Food {
  final int id;
  final String title;
  final String ingredient;
  final String image;
  final int price;
  final String calories;
  final String description;

  Food({
    this.id,
    this.title,
    this.ingredient,
    this.image,
    this.price,
    this.calories,
    this.description,
  });
}

List<Food> listFood = [
  Food(
      id: 0,
      title: "Vegan salad bowl",
      image: "assets/images/image_1.png",
      price: 20,
      calories: "420Kcal",
      description:
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. "),
  Food(
    id: 1,
    title: "Vegan salad bowl",
    image: "assets/images/image_2.png",
    price: 20,
    calories: "420Kcal",
    description:
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ",
  )
];
