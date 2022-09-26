import SwiftUI

public struct SFCapsuleButtonStyle: ButtonStyle {
  
  public init(sfString: String,
              foregroundColor: Color = .white,
              backgroundColor: Color = .bob,
              fontSize: Font = .body) {
    self.sfString = sfString
    self.foregroundColor = foregroundColor
    self.backgroundColor = backgroundColor
    self.fontSize = fontSize
  }
  
  public let sfString: String
  public let foregroundColor: Color
  public let backgroundColor: Color
  public let fontSize: Font
  
  public func makeBody(configuration: Self.Configuration) -> some View {
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
