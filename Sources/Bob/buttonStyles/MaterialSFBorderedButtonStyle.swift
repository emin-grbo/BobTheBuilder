import SwiftUI

public struct MaterialSFBorderedButtonStyle  : ButtonStyle {
  
  @Environment(\.accessibilityReduceMotion)
  var reduceMotion
  
  public init(fontSize: Font = .title2,
              textColor: Color = .bob,
              foregroundColor: Color = .bob,
              imageString: String? = nil,
              sfString: String? = nil,
              cornerRadius: CGFloat = 16) {
    self.fontSize = fontSize
    self.textColor = textColor
    self.foregroundColor = foregroundColor
    self.imageString = imageString
    self.sfString = sfString
    self.cornerRadius = cornerRadius
  }
  
  public let fontSize: Font
  public let textColor: Color
  public let foregroundColor: Color
  public let imageString: String?
  public let sfString: String?
  public let cornerRadius: CGFloat
  
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
    .padding()
    .background(.quaternary)
    .foregroundStyle(foregroundColor)
    .cornerRadius(cornerRadius)
    .scaleEffect(configuration.isPressed ? 0.95 : 1)
    .rotationEffect(Angle(degrees: configuration.isPressed ? 2 : 0))
    .animation(reduceMotion ? nil : Animation.spring(response: 0.4,
                                                     dampingFraction: 0.6,
                                                     blendDuration: 0.8), value: configuration.isPressed)
  }
}
