import SwiftUI

struct SFCapsuleButtonStyle: ButtonStyle {
    
    var foregroundColor: Color = .white
    var backgroundColor: Color = Color.purple_bob
    var fontSize: Font = .body
    let sfString: String
    
    func makeBody(configuration: Self.Configuration) -> some View {
        HStack {
            Image(systemName: sfString)
            configuration.label
        }
        .padding()
        .background(Capsule().fill(backgroundColor))
        .foregroundColor(foregroundColor)
        .font(fontSize.bold())
        .fixedSize()
    }
}
