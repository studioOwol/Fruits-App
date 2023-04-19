//
//  OnboardingView.swift
//  Fruits
//
//  Created by Nahyun on 2023/04/19.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROPERTY
    
    //MARK: - BODY
    var body: some View {
        TabView{
            ForEach(0..<5) { item in
                FruitCardView()
            } //: Loop
            FruitCardView()
        } //: Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
