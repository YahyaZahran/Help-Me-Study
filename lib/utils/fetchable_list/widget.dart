import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:testap/utils/fetchable_list/controller.dart';

abstract class FetchableList<T extends FetchableListController>
    extends StatelessWidget {
  final T controller = Get.find<T>();
  final ScrollController scrollController;

  FetchableList({Key key, this.scrollController}) : super(key: key);

  Widget itemBuilder(BuildContext buildContext, int index);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (controller.isLoading)
          return Center(
            child: CircularProgressIndicator(),
          );
        if (controller.hasError)
          return Center(
            child: Text(controller.errorText),
          );
        return ListView.builder(
          controller: scrollController,
          itemBuilder: itemBuilder,
          itemCount: controller.items.length,
        );
      },
    );
  }
}
