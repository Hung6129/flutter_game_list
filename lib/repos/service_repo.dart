import 'dart:convert';
import 'dart:html';

import 'package:flutter_game_list/model/data_model.dart';
import 'package:http/http.dart' as http;

class ServiceRepo {
  Future<List<DataModel>?> getData() async {
    String url = "https://www.gamerpower.com/api/giveaways";
    final results = await http.Client().get(Uri.parse(url));
    if (results.statusCode == 200) {
      Iterable models = jsonDecode(results.body);
      List<DataModel> dataModels = [];
      for (var model in models) {
        DataModel dataModel = DataModel.fromJson(model);
        dataModels.add(dataModel);
      }
      return dataModels;
    } else {
      print("Fail to fetch data from API");
    }
  }
}
