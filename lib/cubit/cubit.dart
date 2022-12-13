import 'package:bloc/bloc.dart';
import 'package:device_info/device_info.dart';
import 'package:deviceinfo/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InfoCubit extends Cubit<InfoStates> {
  InfoCubit() : super(InfoInitialStates());
  static InfoCubit get(context) => BlocProvider.of(context);
  String model = "";
  String host = "";
  String deviceVersion = "";
  String id = "";
  String brand = "";
  String display = "";
  String realDev = "";
  String type = "";
  DeviceInfoPlugin? device;

  void Information() {
    device = DeviceInfoPlugin();
    device!.androidInfo.then((value) {
      model = value.model;
      host = value.host;
      deviceVersion = value.version.sdkInt.toString();
      id = value.id;
      brand = value.brand;
      display = value.display;
      realDev = value.isPhysicalDevice.toString();
      type = value.type;
      emit(InfoDeviceState());
    });
  }
}
