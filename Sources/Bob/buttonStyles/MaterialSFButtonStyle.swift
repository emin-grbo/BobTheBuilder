import SwiftUI

public struct MaterialSFButtonStyle: ButtonStyle {
    
  public init(sfString: String,
              bold: Bool = false,
              color: Color = Color.bob,
              size: CGFloat = 40) {
    self.sfString = sfString
    self.bold = bold
    self.color = color
    self.size = size
  }
  
  public let sfString: String
  public let bold: Bool
  public let color: Color
  public let size: CGFloat
    
  public func makeBody(configuration: Self.Configuration) -> some View {
      Image(systemName: sfString)
        .resizable()
        .font(bold ? .body.bold() : .body)
        .symbolRenderingMode(.hierarchical)
        .foregroundColor(color)
        .aspectRatio(contentMode: .fit)
        .frame(width: size, height: size)
        .opacity(configuration.isPressed ? 0.8 : 1)
        .scaleEffect(configuration.isPressed ? 1.2 : 1, anchor: .center)
        .blur(radius: configuration.isPressed ? 1 : 0)
    }
}
