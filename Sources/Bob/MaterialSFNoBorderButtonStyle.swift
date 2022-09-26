import SwiftUI

public struct MaterialSFNoBorderButtonStyle: ButtonStyle {
    
  public init(sfString: String,
              bold: Bool = false,
              symbolColor: Color = Color.bob,
              textColor: Color = .black,
              size: CGFloat = 40) {
    self.sfString = sfString
    self.bold = bold
    self.symbolColor = symbolColor
    self.textColor = textColor
    self.size = size
  }
  
  public let sfString: String
  public let bold: Bool
  public let symbolColor: Color
  public let textColor: Color
  public let size: CGFloat
  
  public func makeBody(configuration: Self.Configuration) -> some View {
    HStack {
      Image(systemName: sfString)
        .resizable()
        .frame(width: size, height: size)
        .font(bold ? .body.bold() : .body)
        .padding(.trailing, 8)
        .symbolRenderingMode(.hierarchical)
        .foregroundColor(symbolColor)
        .opacity(configuration.isPressed ? 0.8 : 1)
        .scaleEffect(configuration.isPressed ? 1.2 : 1, anchor: .leading)
        .blur(radius: configuration.isPressed ? 1 : 0)
      configuration.label
        .font(bold ? .body.bold() : .body)
        .foregroundColor(textColor)
    }
  }
}
