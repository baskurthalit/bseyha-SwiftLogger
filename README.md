# SwiftLogger

SwiftLogger is a simple, emoji-enhanced logging utility for Swift projects. It provides an easy-to-use interface for logging messages with different severity levels, each accompanied by a relevant emoji for quick visual identification.

## Features

- Four log levels: success, info, warning, and error
- Emoji prefixes for easy log type identification
- Ability to enable/disable logging
- Customizable system name and category

## Installation

### Swift Package Manager

You can add SwiftLogger to your project using Swift Package Manager. Add the following to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/baskurthalit/bseyha-SwiftLogger", from: "1.0.0")
]
```

## Usage

First, import the bseyha-SwiftLogger module:

```swift
import bseyha_SwiftLogger
```

Then, create an instance of SwiftLogger:

```swift
let logger = SwiftLogger()
```

You can customize the logger by specifying a system name and category:

```swift
let logger = SwiftLogger(systemName: "MyApp", category: "NetworkModule")
```

### Logging Messages

Use the different logging methods to log messages:

```swift
logger.success("Operation completed successfully")
logger.info("User logged in")
logger.warning("Low memory warning")
logger.error("Failed to load data")
```

### Disabling Logging

You can disable logging by setting `isEnabled` to `false`:

```swift
logger.isEnabled = false
```

## Log Output

Each log message will be prefixed with an emoji corresponding to its level:

- Success: ✅
- Info: ℹ️
- Warning: ⚠️
- Error: ❌

## Requirements

- [.iOS(.v14),.macOS(.v11),.watchOS(.v7),.tvOS(.v14),.visionOS(.v1)]
- Swift 5.0+
