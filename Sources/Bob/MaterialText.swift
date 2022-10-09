import SwiftUI

public struct MaterialText: ViewModifier {
  
  let font: Font
  let color: Color
  
  public func body(content: Content) -> some View {
    content
      .font(font.bold())
      .padding(3)
      .padding(.horizontal, 1)
      .background(.quaternary)
      .cornerRadius(4)
      .foregroundStyle(color)
      .minimumScaleFactor(0.5)
  }
}

extension View {
  public func materialText(font: Font = .caption2,
                           color: Color = .bob) -> some View {
    modifier(MaterialText(font: font, color: color))
  }
}
