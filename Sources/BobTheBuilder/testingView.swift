import SwiftUI

struct SwiftUIView: View {
  
  let date = Date().formattedMonthDay()
  
  var body: some View {
    Button("Read The Tag") {
      print("")
    }
    .buttonStyle(SemiRoundedButtonStyle())
  }
}

struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
  }
}

