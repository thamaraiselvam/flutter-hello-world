import 'package:hello/models/FoodItems.dart';
import 'package:http/http.dart' as http;
import 'package:hello/common/constant.dart';

class FoodItemService {
  static Future getAllFoodItems() async {
    var response = await http.get(getFoodItemsUrl);
    return foodItemFromJson(response.body);
  }
}