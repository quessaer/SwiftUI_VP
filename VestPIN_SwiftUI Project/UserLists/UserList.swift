//
//  UserList.swift
//  VestPIN_SwiftUI Project
//
//  Created by J.T. Kim on 2021/11/12.
//

import SwiftUI

struct UserList: View {
    @State private var showFavoriteOnly = false
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoriteOnly) {
                    Text("즐겨찾기")
                }
                
                
            }
        }
    }
}

struct UserList_Previews: PreviewProvider {
    static var previews: some View {
        UserList()
    }
}
