import SwiftUI

public struct SemiRoundedButtonStyle: ButtonStyle {
	
	public init(height: CGFloat = 70,
							radius: CGFloat = 20,
							foregroundColor: Color = .black,
							backgroundColor: Color = .bob,
							fontSize: Font = .body) {
		self.height = height
		self.radius = radius
		self.foregroundColor = foregroundColor
		self.backgroundColor = backgroundColor
		self.fontSize = fontSize
	}
	
	public let height: CGFloat
	public let radius: CGFloat
	public let foregroundColor: Color
	public let backgroundColor: Color
	public let fontSize: Font
	
	public func makeBody(configuration: Self.Configuration) -> some View {
		HStack {
			configuration.label
		}
		.padding()
		.font(.title2).bold()
		.frame(maxWidth: .infinity)
		.frame(height: height)
		.background(RoundedRectangle(cornerRadius: radius)
			.fill(backgroundColor))
		.foregroundColor(foregroundColor)
		.font(fontSize.bold())
		.padding(.horizontal, 32)
	}
}

