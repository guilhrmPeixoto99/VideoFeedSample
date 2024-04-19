@testable import VideoFeedSample
import XCTest

final class ListingServiceTests: XCTestCase {

    func testFetch_whenRequestingListing_ShouldRequestCorrectly() async throws {
        let sut = ListingService()
        let responseMock = ListingResponse.mock()

        let response = try await sut.fetch()

        XCTAssertEqual(response, responseMock)
    }
}
