//
//  SwiftLogger.swift
//  
//
//  Created by Halit Baskurt on 14.09.2024.
//

import os.log

public final class SwiftLogger {
    
    var internalLogger: Logger
    
    var isEnabled: Bool
    
    public init(
        systemName: String = "bseyha-SwiftLogger",
        category: String = "Log",
        isEnabled: Bool = true
    ) {
        self.isEnabled = isEnabled
        self.internalLogger = .init(subsystem: systemName, category: category)
    }
}

public extension SwiftLogger {
    /// Log for success. Will add ✅ emoji to see better
    ///
    /// - Parameter message: Logging message
    func success(_ message: String) {
        guard isEnabled else { return }
        internalLogger.log("✅ \(message)")
    }
    
    /// Log for success. Will add ℹ️ emoji to see better
    ///
    /// - Parameter message: Logging message
    func info(_ message: String) {
        guard isEnabled else { return }
        internalLogger.notice("ℹ️ \(message)")
    }
    
    /// Log for warning. Will add ⚠️ emoji to see better
    ///
    /// - Parameter message: Logging message
    func warning(_ message: String) {
        guard isEnabled else { return }
        internalLogger.warning("⚠️ \(message)")
    }
    
    /// Log for error. Will add ❌ emoji to see better
    ///
    /// - Parameter message: Logging message
    func error(_ message: String) {
        guard isEnabled else { return }
        internalLogger.error("❌ \(message)")
    }
}
