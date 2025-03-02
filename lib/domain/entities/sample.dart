class Sample {
  final int id;
  final String name;
  final String email;

  const Sample({
    required this.id,
    required this.name,
    required this.email,
  });

  @override
  String toString() {
    return 'Sample{id: $id, name: $name}';
  }
}
