import Foundation
import SwiftUI

final class ListingViewState: ObservableObject {

    @Published
    var items: [ListingItem] = []
}
