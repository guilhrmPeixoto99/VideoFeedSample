protocol ListingInteractoring {
    func fecthItems() async
    func onTapLikeButton(index: Int)
    func onTapFireButton(index: Int)
}

final class ListingInteractor {

    let service: ListingService
    let viewState: ListingViewState

    init(service: ListingService, viewState: ListingViewState) {
        self.service = service
        self.viewState = viewState
    }

}

extension ListingInteractor: ListingInteractoring {
    func onTapLikeButton(index: Int) {
        viewState.items[index].likeCount += 1
    }
    
    func onTapFireButton(index: Int) {
        viewState.items[index].fireCount += 1
    }
    
    func fecthItems() async {
        do {
            let response = try await service.fetch()

            viewState.items = response.looks
        } catch { }
    }
}


