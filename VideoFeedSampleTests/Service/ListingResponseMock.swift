@testable import VideoFeedSample
import Foundation

extension ListingResponse {

    static func mock() -> ListingResponse {
        .init(
            looks: [
                .init(
                    id: 1,
                    song: URL(string: "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/ed/53/71/ed53718e-dd8a-7778-3b2b-880a66e440d9/mzaf_7402784352054176406.plus.aac.p.m4a"),
                    body: "Love this thrifted top with my handmade choker!",
                    profilePicture: URL(string: "https://ttv-v2-assets.tlprt.shop/images/images/original/e75e755d-b8f4-4cea-98ad-0b1b2837ea97"),
                    username: "theperson2",
                    video: URL(string: "https://ttv-v2-assets.tlprt.shop/processed/compressed-for-ios/f1de865102aff6e13591842cce809487")
                ),
                .init(
                    id: 2,
                    song: URL(string: "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/02/27/e9/0227e96a-4b31-8339-e81f-1203c31ef441/mzaf_13486950432614235248.plus.aac.p.m4a"),
                    body: "show ur layers day!",
                    profilePicture: URL(string: "https://ttv-v2-assets.tlprt.shop/images/images/original/e36a8f31-b7f6-42b1-92c5-a2c295991fa3"),
                    username: "justanotheruser",
                    video: URL(string: "https://ttv-v2-assets.tlprt.shop/processed/compressed-for-ios/6913d081064b4a99b5742e8e15e5541a")
                ),
                .init(
                    id: 3,
                    song: URL(string: "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview122/v4/45/0d/c6/450dc66a-d6f5-5bdd-19d7-3ba3c0a6f9fb/mzaf_8198542298496411575.plus.aac.p.m4a"),
                    body: "Flowers for a rainy day💐",
                    profilePicture: URL(string: "https://ttv-v2-assets.tlprt.shop/images/images/original/6ca60112-440d-49ad-8589-9062807cfb05"),
                    username: "theuserofoz",
                    video: URL(string: "https://ttv-v2-assets.tlprt.shop/processed/compressed-for-ios-320/c304e853468630dded531b753095de89")
                ),.init(
                    id: 4,
                    song: URL(string: "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview112/v4/54/be/0c/54be0ce0-475d-eb5e-9464-4c2abc3b0a0e/mzaf_7215179913584518329.plus.aac.p.m4a"),
                    body: "off to a concert",
                    profilePicture: URL(string: "https://ttv-v2-assets.tlprt.shop/images/images/original/344297ed-45c6-4dfe-8853-0e013213a63b"),
                    username: "danielleurban",
                    video: URL(string: "https://ttv-v2-assets.tlprt.shop/processed/compressed-for-ios-320/aab80170cdeb30d0d22190d4c1e8531a")
                )

            ]
        )
    }
}
