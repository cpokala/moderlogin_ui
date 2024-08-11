import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:logger/logger.dart';
import 'dart:async';

class BleController extends GetxController {
  final logger = Logger();
  final airQualityVOC = RxString('');
  final temperature = RxDouble(0.0);
  final humidity = RxDouble(0.0);
  final batteryLevel = RxInt(0);
  final pmDetails = RxMap<String, double>();

  final _scanResultsController = StreamController<List<ScanResult>>.broadcast();
  Stream<List<ScanResult>> get scanResults => _scanResultsController.stream;

  final List<ScanResult> _scanResultsList = [];

  @override
  void onClose() {
    _scanResultsController.close();
    super.onClose();
  }

  Future<void> scanDevices() async {
    if (await Permission.bluetoothScan.request().isGranted && await Permission.bluetoothConnect.request().isGranted) {
      if (await FlutterBluePlus.isScanning.first) {
        return;
      }

      _scanResultsList.clear();

      FlutterBluePlus.scanResults.listen((results) {
        _scanResultsList.addAll(results);
        _scanResultsController.add(_scanResultsList);
      });

      await FlutterBluePlus.startScan(timeout: const Duration(seconds: 50));

      await Future.delayed(const Duration(seconds: 50));
      await FlutterBluePlus.stopScan();
    }
  }

  Future<void> connectToDevice(BluetoothDevice device) async {
  if (device.isConnected) {
    logger.i("Device already connected: ${device.platformName}");
    setupListeners(device);
    return;
  }

  try {
    await device.connect();
    logger.i("Device connected: ${device.platformName}");
    setupListeners(device);
  } on TimeoutException {
    logger.e("Connection timed out. Retrying...");
    await device.disconnect();
  } catch (e) {
    logger.e("Error connecting to device: $e");
  }
}
  void setupListeners(BluetoothDevice device) {
    logger.d("Setting up listeners");
    device.discoverServices().then((services) {
      for (var service in services) {
        if (service.uuid.toString().toLowerCase() == "db450001-8e9a-4818-add7-6ed94a328ab4") {
          logger.d("Service discovered: ${service.uuid}");
          subscribeToCharacteristic(service, "db450002-8e9a-4818-add7-6ed94a328ab4", _updateAirQuality);
          subscribeToCharacteristic(service, "db450003-8e9a-4818-add7-6ed94a328ab4", _updateEnvironmental);
          subscribeToCharacteristic(service, "db450004-8e9a-4818-add7-6ed94a328ab4", _updateStatus);
          subscribeToCharacteristic(service, "db450005-8e9a-4818-add7-6ed94a328ab4", _updatePM);
        }
      }
    }).catchError((error) {
      logger.e("Error discovering services: $error");
    });
  }

  void _updateAirQuality(List<int> value) {
    if (value.length == 4) {
      final voc = (value[0] << 8) | value[1];
      airQualityVOC.value = "VOC: $voc ppb";
      logger.d("Updated VOC: ${airQualityVOC.value}");
    } else {
      logger.e("Invalid Air Quality Data Length: ${value.length}");
    }
  }

  void _updateEnvironmental(List<int> value) {
    if (value.length == 8) {
      humidity.value = value[0].toDouble();
      int temp = value[1];
      int extendedTemp = (value[6] << 8) | value[7];
      temperature.value = temp + extendedTemp / 100.0;
      logger.d("Updated Environmental Data - Temperature: ${temperature.value}, Humidity: ${humidity.value}");
    } else {
      logger.e("Invalid Environmental Data Length: ${value.length}");
    }
  }

  void _updateStatus(List<int> value) {
    if (value.length == 2) {
      batteryLevel.value = value[1];
      logger.d("Updated Battery Level: ${batteryLevel.value}");
    } else {
      logger.e("Invalid Status Data Length: ${value.length}");
    }
  }

  void _updatePM(List<int> value) {
    if (value.length == 12) {
      pmDetails.value = {
        "PM1": (value[0] << 8 | value[1]).toDouble(),
        "PM2.5": (value[2] << 8 | value[3]).toDouble(),
        "PM10": (value[4] << 8 | value[5]).toDouble(),
        "PM4": (value[6] << 8 | value[7]).toDouble(),
      };
      logger.d("Updated PM Details: $pmDetails");
    } else {
      logger.e("Invalid PM Data Length: ${value.length}");
    }
  }

  void subscribeToCharacteristic(BluetoothService service, String characteristicId, void Function(List<int> value) updateFunction) async {
    try {
      var characteristic = service.characteristics.firstWhere(
        (c) => c.uuid.toString().toLowerCase() == characteristicId.toLowerCase(),
        orElse: () => throw Exception('Characteristic $characteristicId not found')
      );
      await characteristic.setNotifyValue(true);
      characteristic.lastValueStream.listen(updateFunction);
    } catch (e) {
      logger.e("Error subscribing to characteristic: $characteristicId, Error: $e");
    }
  }
}