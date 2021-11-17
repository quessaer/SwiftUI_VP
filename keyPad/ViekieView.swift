//
//  ViekieView.swift
//  VestPIN_SwiftUI_rev0
//
//  Created by J.T. Kim on 2021/11/10.
//

import SwiftUI



struct ViekieView: View {
    @State var firstPinInput: String = ""
    var body: some View {
        TextField("PIN 입력", text: $firstPinInput)
    }
}

struct ViekieView_Previews: PreviewProvider {
    static var previews: some View {
        ViekieView()
    }
}
