class FoodCaloriesEntity {
  int? id;
  String title;
  String? description;
  int grams;
  int calories;

  FoodCaloriesEntity({
    this.id,
    required this.title,
    this.description,
    required this.grams,
    required this.calories,
  });

  toJson() {
    return {
      "title": title,
      "description": description,
      "grams": grams,
      "calories": calories,
    };
  }
}
