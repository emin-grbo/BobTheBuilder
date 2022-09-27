import SwiftUI

public struct MaterialSFBorderedButtonStyle  : ButtonStyle {
  
  @Environment(\.accessibilityReduceMotion)
  var reduceMotion
  
  public init(fontSize: Font = .title2,
              foregroundColor: Color = .bob,
              imageString: String? = nil,
              sfImageString: String? = nil,
              cornerRadius: CGFloat = 16) {
    self.fontSize = fontSize
    self.foregroundColor = foregroundColor
    self.imageString = imageString
    self.sfImageString = sfImageString
    self.cornerRadius = cornerRadius
  }
  
  public let fontSize: Font
  public let foregroundColor: Color
  public let imageString: String?
  public let sfImageString: String?
  public let cornerRadius: CGFloat
  
  public func makeBody(configuration: Self.Configuration) -> some View {
    HStack {
      if let imageString = imageString {
        Image(imageString)
      } else if let sfImageString = sfImageString {
        Image(systemName: sfImageString)
          .symbolRenderingMode(.hierarchical)
      }
      configuration.label
    }
    .font(fontSize.bold())
    .frame(maxWidth: .infinity)
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
