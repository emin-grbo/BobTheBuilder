import SwiftUI

struct SwiftUIView: View {
  
  let date = Date().formattedMonthDay()
  
  var body: some View {
		Button("Button"){}
			.buttonStyle(NativeLikeButtonStyle(SFIconString: "circle.fill"))
			.padding(.horizontal, 40)
  }
}

struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
  }
}

