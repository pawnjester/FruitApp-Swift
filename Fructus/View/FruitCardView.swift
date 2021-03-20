//
//  FruitCardView.swift
//  Fructus
//
//  Created by okonji emmanuel on 20/03/2021.
//

import SwiftUI

struct FruitCardView: View {
    
    // MARK: - Properties
    var fruit: Fruit
    @State private var isanimating: Bool = false
    
    //MARK: - BODY
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // FRUIT IMAGE
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isanimating ? 1.0 : 0.6)
                // FRUIT: TITLE
                
                Text(fruit.title).foregroundColor(Color.white).font(.largeTitle).fontWeight(.heavy).shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                //FRUIT: HEADLINE
                Text(fruit.headline).foregroundColor(Color.white).multilineTextAlignment(.center).padding(.horizontal, 16).frame(maxWidth: 480)
                //BUTTON: START
                
                StartButtonView()
                
            }
        } //: ZSTACK
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)) {
                isanimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .leading, endPoint: .trailing)).cornerRadius(20).padding(.horizontal, 20)
    }
}

// MARk: - PREVIEW

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitData[0])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
