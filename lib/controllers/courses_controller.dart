import 'package:get/get.dart';
import 'package:testap/models/course.dart';
import 'package:testap/services/api.dart';
import 'package:testap/utils/fetchable_list/controller.dart';

class CoursesController extends FetchableListController<Course>
{
  final api = Get.find<Api>();
  @override
  Future<List<Course>> fetcher() async{
    var res = await api.getAllCourses();
    return res;
  }
 
 
}