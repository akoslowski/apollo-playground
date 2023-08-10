import XCTest
@testable import VastRaven

final class VastRavenTests: XCTestCase {
    func testTest() throws {
        XCTAssertEqual(VastRaven().greeting, "Hello Package Playground")
    }
}