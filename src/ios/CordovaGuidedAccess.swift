import Foundation
import UIKit

@objc(CordovaGuidedAccess) class CordovaGuidedAccess : CDVPlugin {
  func guidedAccessMode(command: CDVInvokedUrlCommand) {
    UIAccessibilityRequestGuidedAccessSession(command.arguments[0]) {
      success in
        print("ok")
    }
  }
}
