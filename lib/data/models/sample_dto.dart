class SampleDto {
  final int id;
  final String name;
  final String email;

  const SampleDto({
    required this.id,
    required this.name,
    required this.email,
  });

  factory SampleDto.fromJson(Map<String, dynamic> json) {
    return SampleDto(
      id: json['id'],
      name: json['name'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
    };
  }
}
