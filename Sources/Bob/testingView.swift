import SwiftUI

struct SwiftUIView: View {
  var body: some View {
    Button("button") {
      print("")
    }
    .buttonStyle(MaterialSFNoBorderButtonStyle(sfString: "plus.circle.fill"))
  }
}

struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
  }
}

