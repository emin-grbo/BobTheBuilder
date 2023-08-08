import SwiftUI

struct SwiftUIView: View {
  
  let date = Date().formattedMonthDay()
  
  var body: some View {
    Button(date) {
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

