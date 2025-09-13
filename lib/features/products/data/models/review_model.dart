
class ReviewModel {
  final int rating;
  final String comment;
  final String date;
  final String reviewerName;
  final String reviewerEmail;

  ReviewModel({
    required this.rating,
    required this.comment,
    required this.date,
    required this.reviewerName,
    required this.reviewerEmail,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      rating: json["rating"],
      comment: json["comment"],
      date: json["date"],
      reviewerName: json["reviewerName"],
      reviewerEmail: json["reviewerEmail"],
    );
  }
}