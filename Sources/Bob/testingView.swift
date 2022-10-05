import SwiftUI

struct SwiftUIView: View {
  var body: some View {
    Button("button") {
      print("")
    }
    .buttonStyle(MaterialSFButtonStyle(sfString: "eye.slash.fill"))
  }
}

struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
  }
}

