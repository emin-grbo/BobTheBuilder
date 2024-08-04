import SwiftUI

struct SwiftUIView: View {
  
  let date = Date().formattedMonthDay()
  
  var body: some View {
		Button("Test"){}
			.buttonStyle(NativeLikeButtonStyle(SFIconString: "circle.fill"))
  }
}

struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
  }
}

