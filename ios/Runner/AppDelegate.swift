import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    //Add API key
    GMSServices.provideAPIKey("AIzaSyB7MF_XCHEWsEPqdWUZVc8siVlyghMd2tA")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
