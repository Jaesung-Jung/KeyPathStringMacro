import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest

// Macro implementations build for the host, so the corresponding module is not available when cross-compiling. Cross-compiled tests may still make use of the macro itself in end-to-end tests.
#if canImport(KeyPathStringMacros)
import KeyPathStringMacros

let testMacros: [String: Macro.Type] = [
    "keyPathString": KeyPathStringMacro.self,
]
#endif

final class KeyPathStringTests: XCTestCase {
    func testMacro() throws {
        #if canImport(KeyPathStringMacros)
        assertMacroExpansion(
            #"""
            #keyPathString(\User.name)
            """#,
            expandedSource: """
            "name"
            """,
            macros: testMacros
        )
        #else
        throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif
    }
}
