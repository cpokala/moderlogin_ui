import 'package:flutter_blue/flutter_blue.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class BleController extends GetxController {
  final FlutterBlue ble = FlutterBlue.instance;

  Future<void> scanDevices() async {
    var scanPermission = await Permission.bluetoothScan.request();
    var connectPermission = await Permission.bluetoothConnect.request();
    if (scanPermission.isGranted && connectPermission.isGranted) {
      ble.startScan(timeout: const Duration(seconds: 20));
      // Delay stopping the scan to ensure it runs for the specified duration
      await Future.delayed(const Duration(seconds: 20));
      ble.stopScan();
    }
  }

  Future<void> connectToDevice(BluetoothDevice device) async {
    // Optionally log or handle device connection start
    // "Connecting to device: ${device.name}"

    await device.connect(timeout: const Duration(seconds: 15));

    device.state.listen((state) {
      switch (state) {
        case BluetoothDeviceState.connecting:
          // "Device Connecting to: ${device.name}"
          break;
        case BluetoothDeviceState.connected:
          // "Device Connected: ${device.name}"
          break;
        case BluetoothDeviceState.disconnected:
          // "Device Disconnected"
          break;
        default:
          // "Device State Changed: $state"print('print('');');
          break;
      }
    });
  }

  Stream<List<ScanResult>> get scanResults => ble.scanResults;
}
