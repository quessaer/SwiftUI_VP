//
//  TestView.swift
//  VestPIN_SwiftUI Project
//
//  Created by J.T. Kim on 2021/11/22.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        VStack {
            Text("popover 테스트")
            Text("공동인증서 로그인 혹은 아이디/패스워드 눌렀을 시 보이는 뷰")
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
