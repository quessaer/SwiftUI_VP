//
//  AccountPageView.swift
//  VestPIN_SwiftUI Project
//
//  Created by J.T. Kim on 2021/11/21.
//

import SwiftUI

struct AccountPageView: View {
    var title = "계좌이체"
    @State var username: String = ""
    
    // 테스트용 Picker Array.. 나중에 getUserList에서 뽑아야 함
    var testUsers = ["다른 계정을 선택하시겠어요?","강백호님", "서태웅님", "최치수님"]
    @State private var selectedTestUser = "다른 계정을 선택하시겠어요?"
    var selectedUserCheck: Bool {
        if selectedTestUser != "다른 계정을 선택하시겠어요?" {
            return true
        } else {
            return false
        }
    }
    
    // 테스트용 Alert 창
    @State var showingAlert = false
    @State var showingAlert2 = false
    @State var showingAlert3 = false
    var body: some View {
        NavigationView {
            VStack {
                Text("❝안녕하세요 로그인 되었습니다.")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.blue)
                    .minimumScaleFactor(0.01)
                    .padding(.bottom, 10)
                
                UserImage()
                Text("계좌번호 : 012-345-6789-01234")
                    .foregroundColor(.blue)
                    .padding(.bottom, 20)
                Text("잔액 : 1,000,000 원")
                    .foregroundColor(.blue)
                
                Button(action: {
                    self.showingAlert = true
                }) {
                    HStack(alignment: .center) {
                        Spacer()
                        Text("간편인증으로 빠른 송금하기")
                            .foregroundColor(.white)
                            .bold()
                        Spacer()
                    }
                }
                .padding().background(Color.blue)
                .cornerRadius(4.0)
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("패턴 인증 결과"), message: Text("사용자 \(selectedTestUser) Vikie 창 호출해서 auth 처리 "), dismissButton: .default(Text("확인")))
                }
                
            }
        }
    }
}
struct AccountPageView_Previews: PreviewProvider {
    static var previews: some View {
        AccountPageView()
    }
}
