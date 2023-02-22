import 'package:yathra_machine_test/app/modules/home/model/tour_model.dart';

class TourListModel {
  TourListModel(
    this.tourModel,
  );

  List<TourModel>? tourModel;

  TourListModel.fromJson(Map<String, dynamic> parsedJson) {
    if (parsedJson['result'] != null) {
      tourModel = <TourModel>[];
      parsedJson['result'].forEach((val) {
        tourModel!.add(TourModel.fromJson(val));
      });
    }
  }
}
