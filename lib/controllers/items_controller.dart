import 'package:get/get.dart';

import '../models/item_model.dart';

class ItemsController extends GetxController {
  RxList<ItemModel> items = <ItemModel>[].obs;
  void addItem() {
    items.add(ItemModel(title: 'قسم رقم ${items.length + 1}', icon: '❤️'));
  }
}
