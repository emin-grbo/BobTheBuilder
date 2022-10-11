import SwiftUI

public struct MaterialSFBorderedButtonStyle  : ButtonStyle {
  
  @Environment(\.accessibilityReduceMotion)
  var reduceMotion
  
  public init(fontSize: Font = .title2,
              textColor: Color = .bob,
              foregroundColor: Color = .bob,
              imageString: String? = nil,
              sfString: String? = nil,
              cornerRadius: CGFloat = 16,
              paddingAmount: CGFloat = 16) {
    self.fontSize = fontSize
    self.textColor = textColor
    self.foregroundColor = foregroundColor
    self.imageString = imageString
    self.sfString = sfString
    self.cornerRadius = cornerRadius
    self.paddingAmount = paddingAmount
  }
  
  public let fontSize: Font
  public let textColor: Color
  public let foregroundColor: Color
  public let imageString: String?
  public let sfString: String?
  public let cornerRadius: CGFloat
  public let paddingAmount: CGFloat
  
  public func makeBody(configuration: Self.Configuration) -> some View {
    HStack {
      if let imageString = imageString {
        Image(imageString)
      } else if let sfString = sfString {
        Image(systemName: sfString)
          .symbolRenderingMode(.hierarchical)
      }
      configuration.label
        .foregroundColor(textColor)
    }
    .frame(maxWidth: .infinity)
    .font(fontSize.bold())
    .padding(paddingAmount)
    .padding(.horizontal, paddingAmount/2)
    .background(.quaternary)
    .foregroundStyle(foregroundColor)
    .cornerRadius(cornerRadius)
    .opacity(configuration.isPressed ? 0.8 : 1)
    .scaleEffect(configuration.isPressed ? 0.95 : 1)
    .rotationEffect(Angle(degrees: configuration.isPressed ? 2 : 0))
  }
}
