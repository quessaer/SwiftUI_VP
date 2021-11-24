//
//  PatternLoginView.swift
//  VestPIN_SwiftUI Project
//
//  Created by J.T. Kim on 2021/11/21.
//

import SwiftUI

struct PatternLoginView: View {
    var testUsers = ["강백호", "서태웅", "채소연"]
    @State private var selectedTestUser = 0
    @State var userPassword = ""

    @State private var isPresented = false
    
    // PIN 입력값을 secureField로 받는다
    

    
    var body: some View {
        VStack {
            HStack {
                Text("사용할 아이디를 선택해주세요.")
                    .padding()
                Picker("사용할 아이디를 선택해주세요.",selection: $selectedTestUser) {
                    ForEach(testUsers, id: \.self) {
                        Text($0)
                    }
                }
                Spacer()
            }
            
            HStack {
                Text("패턴")
                    .padding()
                SecureField("패턴을 입력해주세요", text: $userPassword)
            }
            
            
            Button("로그인(하드코딩 처리)") {
                self.isPresented.toggle()
            }
            .fullScreenCover(isPresented: $isPresented) {
                BankAccountView()
            }

            
        }
    }
}

struct PatternLoginView_Previews: PreviewProvider {
    static var previews: some View {
        PatternLoginView()
    }
}
