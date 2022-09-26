import SwiftUI

struct SwiftUIView: View {
  var body: some View {
    Button("button") {
      print("")
    }
    .buttonStyle(SFCapsuleButtonStyle(sfString: "plus.circle.fill"))
  }
}

struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
  }
}

