//
//  AccountHistoryView.swift
//  VestPIN_SwiftUI Project
//
//  Created by J.T. Kim on 2021/11/21.
//

import SwiftUI

struct AccountHistoryView: View {
    @State var authHistory: [String] = ["2021/11/17 19:32", "2021/11/21 13:14", "2021/11/21 19:34"]
    @State var signHistory: [String] = ["2021/11/17 19:34", "2021/11/21 13:15", "2021/11/21 19:34"]
    
    var body: some View {
        List {
            Section(header: Text("로그인 기록")) {
                ForEach(authHistory, id: \.self) { s in
                    HStack {
                        Text(s)
                        Spacer()
                        Text("성공")
                        
                    }
                    .foregroundColor(.gray)
                }
            }
            
            Section(header: Text("전자서명 기록")) {
                ForEach(signHistory, id: \.self) { s in
                    HStack {
                        Text(s)
                        Spacer()
                        Text("성공")
                    }
                    .foregroundColor(.gray)
                }
            }
            
        }
    }
}

struct AccountHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        AccountHistoryView()
    }
}
