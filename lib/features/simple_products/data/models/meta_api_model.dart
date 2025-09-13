
class MetaApiModel {
  final String createdAt;
  final String updatedAt;
  final String barcode;
  final String qrCode;

  MetaApiModel({
    required this.createdAt,
    required this.updatedAt,
    required this.barcode,
    required this.qrCode,
  });

  factory MetaApiModel.fromJson(Map<String, dynamic> json) {
    return MetaApiModel(
      createdAt: json["createdAt"],
      updatedAt: json["updatedAt"],
      barcode: json["barcode"],
      qrCode: json["qrCode"],
    );
  }
}
