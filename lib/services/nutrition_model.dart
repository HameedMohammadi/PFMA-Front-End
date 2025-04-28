class Nutrition {
  final String name;
  final String servingSize;
  final int caloriesPerServing;
  final int carbsPerServing;
  final int proteinsPerServing;
  final int fatsPerServing;
  final int fiberPerServing;
  final int sugarsPerServing;

  Nutrition({
    required this.name,
    required this.servingSize,
    required this.caloriesPerServing,
    required this.carbsPerServing,
    required this.proteinsPerServing,
    required this.fatsPerServing,
    required this.fiberPerServing,
    required this.sugarsPerServing,
  });

  // Factory constructor to create Nutrition object from JSON
  factory Nutrition.fromJson(Map<String, dynamic> json) {
    return Nutrition(
      name: json['name'],
      servingSize: json['serving_size'],
      caloriesPerServing: json['calories_per_serving'],
      carbsPerServing: json['carbs_per_serving'],
      proteinsPerServing: json['proteins_per_serving'],
      fatsPerServing: json['fats_per_serving'],
      fiberPerServing: json['fiber_per_serving'],
      sugarsPerServing: json['sugars_per_serving'],
    );
  }
}
