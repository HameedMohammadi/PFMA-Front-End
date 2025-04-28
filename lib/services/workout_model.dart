import 'dart:typed_data';

class Workout {
  final String name;
  final String description;
  final String muscleGroup;
  final String? equipmentNeeded;
  final Uint8List? image;

  Workout({
    required this.name,
    required this.description,
    required this.muscleGroup,
    this.equipmentNeeded,
    this.image,
  });

  factory Workout.fromJson(Map<String, dynamic> json) {
    return Workout(
      name: json['name'],
      description: json['description'],
      muscleGroup: json['muscle_group'],
      equipmentNeeded: json['equipment_needed'],
      image: json['image'] != null ? (json['image']['data']) : null,
    );
  }
}
