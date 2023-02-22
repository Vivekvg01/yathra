class TourModel {
  TourModel({
    this.name,
    this.description,
    this.bannerImage,
    this.travellersCount,
    this.extraComments,
    this.isActive,
    this.isDeleted,
    this.amount,
    this.poolStatus,
    this.poolFromDate,
    this.poolToDate,
    this.remainingPoolCount,
    this.date,
    this.duration,
    this.isPoivaaCertified,
    this.rating,
    this.createdAt,
    this.updatedAt,
    this.id,
    this.agentId,
    this.tourTypeId,
    this.tourCategoryId,
  });

  String? name;
  String? description;
  String? bannerImage;
  int? travellersCount;
  String? extraComments;
  bool? isActive;
  bool? isDeleted;
  String? amount;
  dynamic poolStatus;
  dynamic poolFromDate;
  dynamic poolToDate;
  dynamic remainingPoolCount;
  String? date;
  int? duration;
  bool? isPoivaaCertified;
  String? rating;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? id;
  int? agentId;
  int? tourTypeId;
  int? tourCategoryId;

  factory TourModel.fromJson(Map<String, dynamic> json) => TourModel(
        name: json["name"],
        description: json["description"],
        bannerImage: json["bannerImage"],
        travellersCount: json["travellersCount"],
        extraComments: json["extraComments"],
        isActive: json["isActive"],
        isDeleted: json["isDeleted"],
        amount: json["amount"],
        poolStatus: json["poolStatus"],
        poolFromDate: json["poolFromDate"],
        poolToDate: json["poolToDate"],
        remainingPoolCount: json["remainingPoolCount"],
        date: json["date"],
        duration: json["duration"],
        isPoivaaCertified: json["isPoivaaCertified"],
        rating: json["rating"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        id: json["id"],
        agentId: json["agentId"],
        tourTypeId: json["tourTypeId"],
        tourCategoryId: json["tourCategoryId"],
      );
}
