//
//  RegisterView.swift
//  VestPIN_SwiftUI Project
//
//  Created by J.T. Kim on 2021/11/12.
//

import SwiftUI

struct RegisterView: View {
    @State var userID = ""
    @State var userNickName = ""
    @State var userPassword = ""
    
    enum RegisterAuthType {
        case PIN
        case PATTERN
        case Bio
    }
    var body: some View {
        VStack {
            Form {
                TextField("사용자 ID", text: $userID, prompt: Text("아이디를 입력해주세요"))
                TextField("사용자 닉네임", text: $userNickName, prompt: Text("닉네임을 입력해주세요"))
                SecureField("사용하실 PIN을 입력해주세요", text: $userPassword)
                SecureField("PIN 확인", text: $userPassword)
                Text("입력된 PIN: \(userPassword)")
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
