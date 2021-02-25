 import Quick
import Nimble
@testable import Ansi

class Helper: QuickSpec {
  func match<T>(_ parser: P<T>, _ input: String, _ block: @escaping (T) -> Void) {
    do {
      block(try parser.parse(AnyCollection(input)).0)
    } catch (let error) {
      fail("Did fail with \(error)")
    }
  }

  func failure<T>(_ parser: P<T>, _ input: String) {
    do {
      let (output, res) = try parser.parse(AnyCollection(input))
      fail("Expected it to fail but got \(output): \(String(res))")
    } catch {
      /* OK */
    }
  }
}
