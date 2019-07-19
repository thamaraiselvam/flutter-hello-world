import 'package:flutter_test/flutter_test.dart';
import 'package:hello/models/FoodItems.dart';
import 'package:mockito/mockito.dart';

class MockFoodItem extends Mock implements FoodItem {}

void main(){
  test('Should check the list count', (){
    var mockFoodItem = MockFoodItem();
    when(mockFoodItem.name).thenReturn('juice');
    expect(mockFoodItem.name, 'juice');
  });
}