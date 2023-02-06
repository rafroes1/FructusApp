//
//  ContentView.swift
//  FructusApp
//
//  Created by Rafael Carvalho on 30/01/23.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    @State private var isShowingSetting: Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }//:LIST
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSetting = true
            }) {
                Image(systemName: "slider.horizontal.3")
            }//BUTTON
            )
            .sheet(isPresented: $isShowingSetting) {
                SettingsView()
            }
        }//:NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
