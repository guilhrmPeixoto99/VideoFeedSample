import SwiftUI

struct HeaderView: View {

    let item: ListingItem
    let geometry: GeometryProxy

    var body: some View {
        HStack(spacing: 8) {
            AsyncImage(url: item.profilePicture) { phase in
                switch phase {
                case .empty:
                    Color.clear
                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                        .frame(width: 35, height: 30)
                case .failure:
                    Color.clear
                @unknown default:
                    EmptyView()
                }
            }
            Text(item.username)
                .foregroundStyle(.white)
        }
        .padding(16)
        .frame(
            maxWidth: UIScreen.main.bounds.width,
            maxHeight: UIScreen.main.bounds.height - geometry.safeAreaInsets.top,
            alignment: .topLeading
        )
    }
}
