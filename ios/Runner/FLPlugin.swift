//
//  FLPlugin.swift
//  Runner
//
//  Created by Hiloliddin Jaloliddinzoda on 9/23/22.
//

import Flutter
import UIKit

class FLPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let factory = FLNativeViewFactory(messenger: registrar.messenger())
        registrar.register(factory, withId: "<platform-view-type>")
    }
}

