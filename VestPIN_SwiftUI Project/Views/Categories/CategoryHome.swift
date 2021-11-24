//
//  CategoryHome.swift
//  VestPIN_SwiftUI Project
//
//  Created by J.T. Kim on 2021/11/12.
//

import SwiftUI

// 메인 페이지 역할을 한다.
// 로그인 버튼을 눌렀을 때 getUserList()의 정보가 있는 경우 등록된 리스트를 보여주고,
// 등록된 정보가 없을 경우 등록창으로 이동하는 팝업을 띄운다.
struct CategoryHome: View {
    // 테스트용 계정
    var testUsers = ["강백호", "서태웅", "채소연"]
    
    // 테스트 계정의 인덱스[0]를 디폴트 값으로 선택. tesetUsers[0]에 값이 없는 경우는 등록된 사용자가 없는 상태
    @State private var selectedTestUser = 0
    
    // 마지막으로 성공한 로그인 타입을 저장하여 앱이 다음에 실행될 때 default로 사용되도록 한다.
    enum LastSuccessAuthType {
        case Pin
        case Pattern
        case Bio
    }
    
    // 테스트용 Alert 창
    @State var showingAlert1 = false
    @State var showingAlert2 = false
    @State var showingAlert3 = false
    
    // 로그인 처리되면 팝업 뷰 띄움
    // 간편인증용 Popup
    @State private var showingPopoverPIN = false
    // 공동인증서용 Popup
    @State private var showingPopoverSign = false
    // Firebase용 Popup
    @State private var showingPopoverIdPass = false
    
    
    
    var body: some View {
        NavigationView {
            VStack {
                Text("❝ 안녕하세요 \(testUsers[selectedTestUser]) 님")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.blue)
                    .minimumScaleFactor(0.1)
                    .padding(.bottom, 10)
                Text("간편하게 로그인하세요.")
                    .foregroundColor(.blue)
                    .padding(.bottom, 20)
                UserImage()
                
                
                VStack {
                    // 각 인증별 로그인 버튼 등록
                    // VestPIN 인증
                    
                    Button(action: {
                        self.showingAlert1 = true
                        self.showingPopoverPIN = true
                        
                    }) {
                        HStack(alignment: .center) {
                            Spacer()
                            Text("간편인증으로 로그인")
                                .foregroundColor(.white)
                                .bold()
                            Spacer()
                        }
                    }
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(4.0)
                    // popover를 이용해 간편인증 타입을 선택 가능하도록 한다
                    .popover(isPresented: $showingPopoverPIN) {
                        LoginTypeView()
                    }
                    
                    
                    // VestSign 인증.. 추후 구현....
                    Button(action: {
                        self.showingAlert1 = true
                        self.showingPopoverSign = true
                        
                    }) {
                        HStack(alignment: .center) {
                            Spacer()
                            Text("공동인증서로 로그인(미구현)")
                                .foregroundColor(.white)
                                .bold()
                            Spacer()
                        }
                    }
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(4.0)
                    // popover를 이용해 간편인증 타입을 선택 가능하도록 한다
                    .popover(isPresented: $showingPopoverSign) {
                        TestView()
                    }
                    
                    
                    // 아이디/Password 인증.. Firebase로 구현하면 될듯
                    Button(action: {
                        self.showingAlert1 = true
                        self.showingPopoverIdPass = true
                        
                    }) {
                        HStack(alignment: .center) {
                            Spacer()
                            Text("아이디/패스워드 로그인(미구현)")
                                .foregroundColor(.white)
                                .bold()
                            Spacer()
                        }
                    }
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(4.0)
                    .popover(isPresented: $showingPopoverIdPass) {
                        TestView()
                    }
                }
                .padding()
                
                
                NavigationLink(destination: RegisterView()) {
                    Text("등록된 아이디가 없으신가요? 회원가입")
                        
                }
                .navigationTitle("회원가입")
                
                
                
                
            }
        }
        
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
