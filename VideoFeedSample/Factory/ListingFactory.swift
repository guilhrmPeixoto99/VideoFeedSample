enum ListingFactory {
    static func make() -> ListingView {
        let service = ListingService()
        let viewState = ListingViewState()
        let interactor = ListingInteractor(service: service, viewState: viewState)
        let view = ListingView(viewState: viewState, interactor: interactor)

        return view
    }
}
