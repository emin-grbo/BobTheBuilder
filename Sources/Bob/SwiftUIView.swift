import SwiftUI

public struct MaterialSFNoBorderView: View {
  
  public init(title: String,
              sfString: String,
              bold: Bool = false,
              symbolColor: Color = Color.bob,
              textColor: Color = .black,
              size: CGFloat = 40) {
    self.title = title
    self.sfString = sfString
    self.bold = bold
    self.symbolColor = symbolColor
    self.textColor = textColor
    self.size = size
  }
  
  public let title: String
  public let sfString: String
  public let bold: Bool
  public let symbolColor: Color
  public let textColor: Color
  public let size: CGFloat
  
  public var body: some View {
    HStack {
      Image(systemName: sfString)
        .resizable()
        .frame(width: size, height: size)
        .font(bold ? .body.bold() : .body)
        .padding(.trailing, 8)
        .symbolRenderingMode(.hierarchical)
        .foregroundColor(symbolColor)
      Text(title)
        .font(bold ? .body.bold() : .body)
        .foregroundColor(textColor)
    }
  }
}

struct MaterialSFNoBorderView_previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
  }
}
