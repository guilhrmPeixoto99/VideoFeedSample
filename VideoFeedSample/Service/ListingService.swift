import Foundation

protocol ListingServicing {
    func fetch() async throws -> ListingResponse
}

final class ListingService {

    private let resource = "data"

    // MARK: - Private Funtions

    private func readLocalJSON() throws -> Data {
        let bundle = Bundle.main
        let path = bundle.path(forResource: resource, ofType: "json")

        guard let path else { throw MissingLocalResourceError() }

        let url = URL(fileURLWithPath: path)
        let data = try Data(contentsOf: url)
        return data
    }

    private func decode(data: Data) throws -> ListingResponse {
        try JSONDecoder().decode(ListingResponse.self, from: data)
    }
}

// MARK: - ListingServicing

extension ListingService: ListingServicing {
    func fetch() async throws -> ListingResponse {
        do {
            return try decode(data: readLocalJSON())
        } catch {
            return .init(looks: [])
        }
    }
}

// MARK: - ListingContent Erros

extension ListingService {

    struct MissingLocalResourceError: LocalizedError {
        var errorDescription: String? {
            "LIstingContentError: Missing local resource to decode"
        }
    }
}
