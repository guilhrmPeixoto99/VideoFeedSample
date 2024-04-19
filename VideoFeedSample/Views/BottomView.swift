import SwiftUI

struct BottonActions {
    let onTapLikeAction: () -> Void
    let onTapFireAction: () -> Void
}

struct BottomView: View {

    let item: ListingItem
    let geometry: GeometryProxy
    let actions: BottonActions

    @State var isLikePressed = false
    @State var isFirePressed = false

    var body: some View {
        HStack {
            VStack {
                Button(
                    action: actions.onTapLikeAction,
                    label: {
                        Image(systemName: isLikePressed ? "heart.fill" : "heart")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 30)
                            .foregroundStyle(.white)
                    }
                )
                .buttonStyle(.isPressed($isLikePressed))

                Text("\(item.likeCount)")
                    .bold()
                    .foregroundStyle(.white)
            }
            Spacer()

            VStack {
                Button(
                    action: actions.onTapFireAction,
                    label: {
                        Image(systemName: isFirePressed ? "flame.fill" : "flame")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 30)
                            .foregroundStyle(.white)
                    }
                )
                .buttonStyle(.isPressed($isFirePressed))

                Text("\(item.fireCount)")
                    .bold()
                    .foregroundStyle(.white)
            }

        }
        .padding(.horizontal, 16)
        .padding(.bottom, 32)
        .frame(
            maxWidth: UIScreen.main.bounds.width,
            maxHeight: UIScreen.main.bounds.height - geometry.safeAreaInsets.bottom,
            alignment: .bottom
        )
    }
}

public struct PressedButtonStyle: ButtonStyle {

    @Binding var isPressed: Bool

    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .onChange(of: configuration.isPressed) { _, newValue in
                isPressed = newValue
            }
    }
}

public extension ButtonStyle where Self == PressedButtonStyle {
    static func isPressed(_ value: Binding<Bool>) -> PressedButtonStyle {
        .init(isPressed: value)
    }
}
