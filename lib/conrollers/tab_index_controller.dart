import 'package:get/get.dart';

class TabIndexController extends GetxController{
  RxInt _tabeIndex=0.obs;
  int get tabIndex=>_tabeIndex.value;

  set setTabIndex(int newValue){
    _tabeIndex.value=newValue;
  }


}