import 'package:airtell_app/models/connected_devices.dart';

class ModemBloc {
  List<ConnectedDevicesModel> listOfConnectedDevices = [
    ConnectedDevicesModel(
        deviceImage: "assets/icons/mobile_icon.png",
        deviceName: "iPhone 6",
        deviceType: "Mobile",
        serialNumber: "9518 6253 1223 00XC"),
    ConnectedDevicesModel(
        deviceImage: "assets/icons/laptop_icon.png",
        deviceName: "Mac Book",
        deviceType: "Laptop",
        serialNumber: "6231 8623 5023 00VR"),
    ConnectedDevicesModel(
        deviceImage: "assets/icons/watch_icon.png",
        deviceName: "iWatch",
        deviceType: "Watch",
        serialNumber: "5143 9721 1884 00KA"),
  ];

  void disconnectDevice(int index) {
    listOfConnectedDevices.removeAt(index);
  }
}
