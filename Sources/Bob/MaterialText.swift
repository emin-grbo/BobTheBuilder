import SwiftUI

public struct MaterialText: ViewModifier {
  public func body(content: Content) -> some View {
    content
      .font(.caption2.bold())
      .padding(3)
      .padding(.horizontal, 1)
      .background(.quaternary)
      .cornerRadius(4)
      .foregroundStyle(Color.orange)
      .minimumScaleFactor(0.5)
  }
}

extension View {
  public func materialText() -> some View {
    modifier(MaterialText())
  }
}
