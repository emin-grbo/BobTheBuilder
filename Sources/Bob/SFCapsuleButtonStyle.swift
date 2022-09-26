import SwiftUI

public struct SFCapsuleButtonStyle: ButtonStyle {
  
  public let foregroundColor: Color = .white
  public let backgroundColor: Color = Color.purple_bob
  public let fontSize: Font = .body
  public let sfString: String
  
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
