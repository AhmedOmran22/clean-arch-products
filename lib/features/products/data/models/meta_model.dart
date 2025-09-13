
class MetaModel {
  final String createdAt;
  final String updatedAt;
  final String barcode;
  final String qrCode;

  MetaModel({
    required this.createdAt,
    required this.updatedAt,
    required this.barcode,
    required this.qrCode,
  });

  factory MetaModel.fromJson(Map<String, dynamic> json) {
    return MetaModel(
      createdAt: json["createdAt"],
      updatedAt: json["updatedAt"],
      barcode: json["barcode"],
      qrCode: json["qrCode"],
    );
  }
}
