import AppKit
import Hue

public enum Color: Equatable {
  case black // 0
  case red // 1
  case green // 2
  case yellow // 3
  case blue // 4
  case magenta // 5
  case cyan // 6
  case white // 7
  case rgb(Int, Int, Int) // 48, 38
  case index(Int)
  case `default`

  public func toNSColor() -> NSColor {
    switch self {
    case .red:
        return .red
    case .white:
        return .white
    case .black:
        return .black
    case .blue:
        return .blue
    case .green:
        return .green
    case .yellow:
      return NSColor(hex: "#afaf28")
    case .magenta:
        return .magenta
    case .cyan:
        return .cyan
    case let .rgb(red, green, blue):
        let r1 = String(format: "%2X", red)
        let g1 = String(format: "%2X", green)
        let b1 = String(format: "%2X", blue)
        return NSColor(hex: "#" + r1 + g1 + b1)
    case let .index(color):
        let rgb = RGBLookup.sgrToRgb(color)
        return NSColor(hex: "#" + rgb)
    case .default:
      // TODO: What's the default color?
      return NSColor(hex: "#000000")
    }
  }

  public static func == (lhs: Color, rhs: Color) -> Bool {
    switch (lhs, rhs) {
    case (let .rgb(r1, g1, b1), let .rgb(r2, g2, b2)):
      return r1 == r2 && g1 == g2 && b1 == b2
    case (let .index(i1), let .index(i2)):
      return i1 == i2
    default:
      return String(describing: lhs) == String(describing: rhs)
    }
  }
}
