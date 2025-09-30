#if os(iOS)
import Flutter
import UIKit
import CoreBluetooth
#elseif os(macOS)
import Cocoa
import FlutterMacOS
import CoreBluetooth
#else
#error("Unsupported platform.")
#endif

public class BluetoothLowEnergychatterboxPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        NSLog("[BLE-chatterbox-Plugin] ====== PLUGIN REGISTRATION START ======")
        NSLog("[BLE-chatterbox-Plugin] Plugin registering with Flutter...")

#if os(iOS)
        NSLog("[BLE-chatterbox-Plugin] Platform: iOS")
        let messenger = registrar.messenger()
#elseif os(macOS)
        NSLog("[BLE-chatterbox-Plugin] Platform: macOS")
        let messenger = registrar.messenger
#else
#error("Unsupported platform.")
#endif

        // Log Bluetooth authorization status
        if #available(macOS 10.15, iOS 13.0, *) {
            let centralAuth = CBCentralManager.authorization
            let peripheralAuth = CBPeripheralManager.authorization
            NSLog("[BLE-chatterbox-Plugin] CBCentralManager.authorization: \(centralAuth.rawValue) (\(authDescription(centralAuth)))")
            NSLog("[BLE-chatterbox-Plugin] CBPeripheralManager.authorization: \(peripheralAuth.rawValue) (\(authDescription(peripheralAuth)))")
        } else {
            NSLog("[BLE-chatterbox-Plugin] Authorization check not available (requires macOS 10.15+)")
        }

        NSLog("[BLE-chatterbox-Plugin] Creating MyCentralManager...")
        let centralManager = MyCentralManager(messenger: messenger)

        NSLog("[BLE-chatterbox-Plugin] Creating MyPeripheralManager...")
        let peripheralManager = MyPeripheralManager(messenger: messenger)

        NSLog("[BLE-chatterbox-Plugin] Setting up Pigeon API for CentralManager...")
        MyCentralManagerHostAPISetup.setUp(binaryMessenger: messenger, api: centralManager)

        NSLog("[BLE-chatterbox-Plugin] Setting up Pigeon API for PeripheralManager...")
        MyPeripheralManagerHostAPISetup.setUp(binaryMessenger: messenger, api: peripheralManager)

        NSLog("[BLE-chatterbox-Plugin] ====== PLUGIN REGISTRATION COMPLETE ======")
        NSLog("[BLE-chatterbox-Plugin] Note: CBCentralManager NOT created yet (lazy init)")
        NSLog("[BLE-chatterbox-Plugin] It will be created when Dart calls initialize() or getState()")
    }

    @available(macOS 10.15, iOS 13.0, *)
    private static func authDescription(_ auth: CBManagerAuthorization) -> String {
        switch auth {
        case .notDetermined: return "notDetermined"
        case .restricted: return "restricted"
        case .denied: return "denied"
        case .allowedAlways: return "allowedAlways"
        @unknown default: return "unknown(\(auth.rawValue))"
        }
    }
}
