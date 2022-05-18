//
//  RigiLogger.swift
//  Rigi
//
//  Created by Dimitri van Oijen on 02/05/2022.
//

import Foundation

public var debugLoggingEnabled = false

public enum RigiLogLevel: String {
    case debug = "debug", verbose = "verbose", warning = "warning", error = "error"
}

public class RigiLogger {
    public static func log(_ level: RigiLogLevel = .verbose, _ message: String, _ error: Error? = nil) {
        if !RigiSdk.shared.settings.loggingEnabled {
            return
        }
        if !debugLoggingEnabled && (level == .debug) {
            return
        }
        let string: [String?] = [message, error?.localizedDescription]
        print("[Rigi] <\(level.rawValue)>:", string.compactMap{ $0 }.joined(separator: ", "))
    }
}
