import Foundation

struct ListingResponse: Decodable, Equatable {
    let looks: [Item]
}

struct Item: Decodable, Identifiable, Equatable {

    // MARK: - Properties

    let id: Int
    let song: URL?
    let body: String
    let profilePicture: URL?
    let username: String
    let video: URL?

    // MARK: - CodingKeys

    enum CodingKeys: String, CodingKey {
        case id, body, username
        case song = "song_url"
        case profilePicture = "profile_picture_url"
        case video = "compressed_for_ios_url"
    }
}
