<p>
  <img src="https://img.shields.io/badge/Swift-5.9-f05318.svg" />
  <img src="https://img.shields.io/badge/iOS->= 13.0-blue.svg" />
  <img src="https://img.shields.io/badge/macOS->= 10.15-blue.svg" />
  <img src="https://img.shields.io/badge/tvOS->= 13.0-blue.svg" />
  <img src="https://img.shields.io/badge/watchOS->= 6.0-blue.svg" />
  <img src="https://img.shields.io/badge/macCatalyst->= 13.0-blue.svg" />
  <img alt="GitHub" src="https://img.shields.io/github/license/lukepistrol/SFSymbolsMacro">
</p>

# KeyPathString

*`keyPathString`* macro allows you to generate a property name string value of a key path expression.

## Installation

### Xcode

1. Click File > Add Package Dependencies
2. Paste the following link into the search field on the upper-right:
   ```
   https://github.com/Jaesung-Jung/KeyPathStringMacro.git
   ```

### Swift Package Manager

In `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/Jaesung-Jung/KeyPathStringMacro.git", from: "0.1.0")
]
```

And then add the dependency to your targets.

## Usage
```swift
let keyPathString = #keyPathString(\User.name) // "name"
```

## License

MIT license. [See LICENSE](https://github.com/Jaesung-Jung/KeyPathStringMacro/blob/main/LICENSE) for details.
