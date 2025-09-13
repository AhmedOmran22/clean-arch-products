
class DimensionsApiModel {
  final double width;
  final double height;
  final double depth;

  DimensionsApiModel({
    required this.width,
    required this.height,
    required this.depth,
  });

  factory DimensionsApiModel.fromJson(Map<String, dynamic> json) {
    return DimensionsApiModel(
      width: (json["width"] as num).toDouble(),
      height: (json["height"] as num).toDouble(),
      depth: (json["depth"] as num).toDouble(),
    );
  }
}