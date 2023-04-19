//
//  OnboardingView.swift
//  Fruits
//
//  Created by Nahyun on 2023/04/19.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROPERTY
    
    var fruits: [Fruit] = fruitsData
    
    //MARK: - BODY
    var body: some View {
        TabView{
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            } //: Loop
        } //: Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
        
    }
}
