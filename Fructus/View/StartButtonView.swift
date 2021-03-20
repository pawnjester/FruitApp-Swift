//
//  StartButtonView.swift
//  Fructus
//
//  Created by okonji emmanuel on 20/03/2021.
//

import SwiftUI

struct StartButtonView: View {
    
    @AppStorage("isOnBoarding") var isOnBoarding: Bool?
    
    var body: some View {
        Button(action: {
            isOnBoarding = false
        }) {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle").imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        }.accentColor(Color.white)
        
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView().preferredColorScheme(.dark).previewLayout(.sizeThatFits)
    }
}