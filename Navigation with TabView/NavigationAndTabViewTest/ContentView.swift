//
//  ContentView.swift
//  NavigationAndTabViewTest
//
//  Created by kor45cw on 2021/05/14.
//

import SwiftUI

struct ContentView: View {
    enum Tab: String {
        case firstItem
        case secondItem
        case thirdItem
    }
    
    @State private var selection: Tab = .firstItem
    
    var body: some View {
        NavigationView {
            TabView(selection: $selection) {
                NavigationLink(
                    destination: Text("first Item Destination"),
                    label: {
                        Text("first Item")
                    })
                    .tag(Tab.firstItem)
                    .tabItem {
                        Text("first Item")
                    }
                
                Text("second Item")
                    .tag(Tab.secondItem)
                    .tabItem {
                        Text("second Item")
                    }
                
                Text("third Item")
                    .tag(Tab.thirdItem)
                    .tabItem {
                        Text("third Item")
                    }
            }.navigationTitle(selection.rawValue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
