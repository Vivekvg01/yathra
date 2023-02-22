import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:yathra_machine_test/app/modules/home/model/tour_list_model.dart';
import 'package:yathra_machine_test/app/modules/home/model/tour_model.dart';
import 'package:yathra_machine_test/app/utils/api_endpoints.dart';

class TourApi {
  Future<TourListModel?> getTourDatas() async {
    final url = Uri.parse(
      '${ApiEndPoints.kbaseUrl}${ApiEndPoints.tourUrl}',
    );

    var header = {'Content-type': 'application/json'};

    try {
      http.Response response = await http.get(url, headers: header);
      if (response.statusCode == 200) {
        List<dynamic> res = jsonDecode(response.body);
        List<TourModel> list = res.map((e) => TourModel.fromJson(e)).toList();
        return TourListModel(list);
      } else if (response.statusCode == 404) {
        log(response.body);
      }
      return null;
    } catch (e) {
      throw Exception(e);
    }
  }
}
