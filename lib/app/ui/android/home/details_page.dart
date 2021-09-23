import 'package:vanilla_getx/app/controller/my_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage extends GetView<MyController> {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomePage')),
      body: GetX<MyController>(initState: (state) {
        Get.find<MyController>().getAll();
      }, builder: (_) {
        return _.postList.length < 1
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_.postList[index].title),
                    subtitle: Text(_.postList[index].body),
                  );
                },
                itemCount: _.postList.length,
              );
      }),
    );
  }
}
