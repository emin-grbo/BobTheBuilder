import SwiftUI

struct MaterialSFButtonStyle: ButtonStyle {
    
  var sfString: String
  var bold: Bool = false
  var color: Color = Color.bob
  var size: CGFloat = 40
    
    func makeBody(configuration: Self.Configuration) -> some View {
      Image(systemName: sfString)
        .resizable()
        .font(.body.bold())
        .symbolRenderingMode(.hierarchical)
        .foregroundColor(color)
        .frame(width: size, height: size)
        .aspectRatio(contentMode: .fit)
        .opacity(configuration.isPressed ? 0.8 : 1)
        .scaleEffect(configuration.isPressed ? 1.2 : 1, anchor: .center)
        .blur(radius: configuration.isPressed ? 1 : 0)
    }
}
