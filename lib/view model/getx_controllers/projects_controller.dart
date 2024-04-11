import 'package:get/get.dart';

class ProjectController  extends GetxController{
  RxList<bool> hovers =[
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ].obs;


  onHover(int index,bool value){
    hovers[index]=value;
  }
  RxList<bool> hoverProduct=[
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,

  ].obs;

  onHoverPruduct(int index,bool value){
    hoverProduct[index]=value;
  }


}