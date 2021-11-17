//
//  ContentView.swift
//  VestPIN_SwiftUI Project
//
//  Created by J.T. Kim on 2021/11/12.
//

import SwiftUI

func pinLoadTest() {
    print(VestPIN.getVersion()!)
}

func vikieLoadTest() {
    print(VikieNumberViewController.getVersion()!)
}

struct ContentView: View {
    var vestPinVersion = VestPIN.getVersion()!
    var vikieVersion = VikieNumberViewController.getVersion()
    @State private var selection: Tab = .register
    
    enum Tab {
        case categoryHome
        case register
        case auth
        case sign
        case renew
        case remove
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label ("메인 페이지", systemImage: "star")
                }
                .tag(Tab.categoryHome)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
