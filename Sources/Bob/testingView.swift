import SwiftUI

struct SwiftUIView: View {
  var body: some View {
    Button("POPULAR") {
      print("")
    }
    .buttonStyle(MaterialSFBorderedButtonStyle())
  }
}

struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
  }
}

