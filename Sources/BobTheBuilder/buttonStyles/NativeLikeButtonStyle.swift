import SwiftUI

public struct NativeLikeButtonStyle: ButtonStyle {
	
	public init(SFIconString: String? = nil,
							fullWidth: Bool = true,
							height: CGFloat = 50,
							sfont: Font = .title3,
							font: Font = .body,
							color: Color? = nil,
							foregroundColor: Color? = nil,
							cornerRadius: CGFloat = 8) {
		self.SFIconString = SFIconString
		self.fullWidth = fullWidth
		self.height = height
		self.sfont = sfont
		self.font = font
		self.color = color
		self.foregroundColor = foregroundColor
		self.cornerRadius = cornerRadius
	}
	
	public let SFIconString: String?
	public let fullWidth: Bool
	public let height: CGFloat
	public let sfont: Font
	public let font: Font
	public let color: Color?
	public let foregroundColor: Color?
	public let cornerRadius: CGFloat
	
	public func makeBody(configuration: Self.Configuration) -> some View {
		ZStack {
			Group {
				RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
					.fill(color ?? Color.blue)
					.frame(height: height)
					.cornerRadius(cornerRadius)
		}
			HStack {
					if let sfIcon = SFIconString {
							Image(systemName: sfIcon)
										.font(sfont)
					}
				configuration.label
					.font(font)
					.bold()
			}
			.padding(.horizontal, 8)
			.foregroundColor(foregroundColor ?? Color.white)
		}
		.fullWidthed(fullWidth: fullWidth)
		.opacity(configuration.isPressed ? 0.5 : 1)
		.compositingGroup()
	}
}

struct FullWidth: ViewModifier {
	var fullWidth: Bool

	func body(content: Content) -> some View {
		if fullWidth {
			content
		} else {
			content
				.fixedSize()
		}
	}
}

extension View {
	func fullWidthed(fullWidth: Bool) -> some View {
				modifier(FullWidth(fullWidth: fullWidth))
		}
}
