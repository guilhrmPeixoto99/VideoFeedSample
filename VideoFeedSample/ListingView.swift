import SwiftUI

struct ListingView: View {

    @StateObject
    var viewState: ListingViewState
    let interactor: ListingInteractor

    var body: some View {
        GeometryReader { geometry in
            TabView {
                ForEach(Array(viewState.items.enumerated()), id: \.offset) { index, item in
                    ZStack {
                        if let videoURL = item.video, let audioURL = item.song {
                            Video(videoURL: videoURL, audioURL: audioURL)
                        }
                        Text(item.body)
                            .foregroundStyle(.white)

                        HeaderView(item: item, geometry: geometry)
                        BottomView(
                            item: item,
                            geometry: geometry,
                            actions: .init(
                                onTapLikeAction: { interactor.onTapLikeButton(index: index) },
                                onTapFireAction: { interactor.onTapFireButton(index: index) }
                            )
                        )
                    }
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .ignoresSafeArea()
            .task {
                await interactor.fecthItems()
            }
        }
    }
}
