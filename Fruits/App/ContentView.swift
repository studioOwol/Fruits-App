//
//  ContentView.swift
//  Fruits
//
//  Created by Nahyun on 2023/04/19.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTY
    
    @State private var isShowingSettings: Bool = false
    var fruits: [Fruit] = fruitsData
    
    //MARK: - BODY
    var body: some View {
        
        NavigationView{
            List{
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                                    Button(action: {
                isShowingSettings = true
            }) {
                Image(systemName: "slider.horizontal.3")
            }//: Button
                .sheet(isPresented: $isShowingSettings){
                    SettingsView()
                }
            )
        }//: Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
