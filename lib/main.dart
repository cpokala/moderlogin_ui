import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:get/get.dart';
import 'package:modernlogintute/ble_controller.dart';
import 'package:modernlogintute/pages/auth_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text("BLE SCANNER")),
    body: GetBuilder<BleController>(
      init: BleController(),
      builder: (controller) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StreamBuilder<List<ScanResult>>(
                stream: controller.scanResults,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.active && snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data?.length ?? 0,
                      itemBuilder: (context, index) {
                        final data = snapshot.data![index];
                        return Card(
                          elevation: 2,
                          child: ListTile(
                            title: Text(data.device.name),
                            subtitle: Text(data.device.id.id),
                            trailing: Text(data.rssi.toString()),
                            onTap: () => controller.connectToDevice(data.device),
                          ),
                        );
                      },
                    );
                  } else {
                    return const Center(child: Text("No devices found"));
                  }
                },
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => controller.scanDevices(),
                child: const Text("SCAN"),
              ),
            ],
          ),
        );
      },
    ),
  );
}
}