import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

/// `keyPathString` macro allows you to generate
/// a property name string value of a key path expression.
///
///     #keyPathString(\User.name)
///
///  will expand to
///
///     "name"
public struct KeyPathStringMacro: ExpressionMacro {
    public static func expansion(
        of node: some FreestandingMacroExpansionSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax {
        guard let argument = node.argumentList.first?.expression else {
            fatalError("the macro does not have any arguments")
        }
        let description = argument.description
        guard let index = description.lastIndex(of: ".") else {
            fatalError("the macro does not have key path syntax")
        }
        return "\(literal: description[description.index(after: index)...])"
    }
}

@main
struct KeyPathStringPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        KeyPathStringMacro.self,
    ]
}
