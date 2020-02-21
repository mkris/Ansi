import AppKit

public extension String {
  func ansified(font: NSFont = NSFont.systemFont(ofSize: 0), color: NSColor? = nil) throws -> NSAttributedString {
    return try process(string: self, using: font, defaultColor: color)
  }

  func replace(_ what: String, _ with: String) -> String {
    return replacingOccurrences(of: what, with: with, options: .literal, range: nil)
  }
}
