import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/items_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final c = Get.put(ItemsController());
    return Scaffold(
        appBar: AppBar(title: const Text('Section 3')),
        floatingActionButton: FloatingActionButton(
            onPressed: () => c.addItem(), child: const Icon(Icons.add)),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(children: [
                      const Text('الأقسام',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Stack(children: [
                        Container(
                            height: 120,
                            width: double.infinity,
                            color: Colors.blue),
                        const Positioned(right: 20, top: 20, child: Text('❤️'))
                      ]),
                      const SizedBox(height: 20),
                      Obx(() => ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: c.items.length,
                          itemBuilder: (ctx, i) {
                            final it = c.items[i];
                            return Container(
                                margin: EdgeInsets.only(bottom: 10),
                                padding: EdgeInsets.all(8),
                                color: Colors.grey[300],
                                child: Row(children: [
                                  Text(it.icon),
                                  SizedBox(width: 10),
                                  Text(it.title)
                                ]));
                          }))
                    ])))));
  }
}
