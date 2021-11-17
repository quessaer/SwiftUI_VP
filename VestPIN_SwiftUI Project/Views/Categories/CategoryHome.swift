//
//  CategoryHome.swift
//  VestPIN_SwiftUI Project
//
//  Created by J.T. Kim on 2021/11/12.
//

import SwiftUI

struct CategoryHome: View {
    var vestPinVersion = VestPIN.getVersion()!
    var vikieVersion = VikieNumberViewController.getVersion()
    
    var body: some View {
        VStack {
            Text("VestPIN Version: \(vestPinVersion)")
            Text("Vikie Version: \(vikieVersion!)")
        }
        
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
