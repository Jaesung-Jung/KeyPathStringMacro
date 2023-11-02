// The Swift Programming Language
// https://docs.swift.org/swift-book

/// A macro that converts the key path into a string. for example,
///
///     #keyPathString(\User.name)
///
/// produces a string `"name"`.
@freestanding(expression)
public macro keyPathString<T: AnyKeyPath>(_ value: T) -> String = #externalMacro(module: "KeyPathStringMacros", type: "KeyPathStringMacro")
