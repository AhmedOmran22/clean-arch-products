
class DimensionsModel {
  final double width;
  final double height;
  final double depth;

  DimensionsModel({
    required this.width,
    required this.height,
    required this.depth,
  });

  factory DimensionsModel.fromJson(Map<String, dynamic> json) {
    return DimensionsModel(
      width: (json["width"] as num).toDouble(),
      height: (json["height"] as num).toDouble(),
      depth: (json["depth"] as num).toDouble(),
    );
  }
}