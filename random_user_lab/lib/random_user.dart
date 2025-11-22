// lib/random_user.dart

class RandomUser {
  final String fullName;
  final String email;
  final String country;
  final String city;      // <-- NUEVO
  final String phone;     // <-- NUEVO
  final String imageUrl;

  RandomUser({
    required this.fullName,
    required this.email,
    required this.country,
    required this.city,   // <-- NUEVO
    required this.phone,  // <-- NUEVO
    required this.imageUrl,
  });

  factory RandomUser.fromJson(Map<String, dynamic> json) {
    final name = json["name"];
    final location = json["location"];

    return RandomUser(
      fullName: "${name["first"]} ${name["last"]}",
      email: json["email"],
      country: location["country"],
      city: location["city"],       // <-- NUEVO
      phone: json["phone"],         // <-- NUEVO
      imageUrl: json["picture"]["large"],
    );
  }
}
