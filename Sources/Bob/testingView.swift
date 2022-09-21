//
//  SwiftUIView.swift
//  
//
//  Created by Emin Grbo on 05/03/2022.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Button("button") {
            
        }
        .buttonStyle(SFRoundedButtonStyle(sfString: "circle.fill"))
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

struct SFRoundedButtonStyle: ButtonStyle {
    
    let sfString: String
    
    func makeBody(configuration: Self.Configuration) -> some View {
        HStack {
            Image(systemName: sfString)
            configuration.label
        }
        .padding()
        .frame(height: 40)
        .background(Capsule().fill(Color.purple_undead))
        .foregroundColor(.white)
        .font(Font.system(.subheadline).bold())
        .fixedSize()
    }
}
