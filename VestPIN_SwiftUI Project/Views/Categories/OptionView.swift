//
//  OptionView.swift
//  VestPIN_SwiftUI Project
//
//  Created by J.T. Kim on 2021/11/20.
//

import SwiftUI

// OptionView의 역할은
// 1. VestPIN, Vikie 버전 출력
// 2. pin Url 및 Server Url을 출력 및 수정

struct OptionView: View {
    var vestPinVersion = VestPIN.getVersion()!
    var vikieVersion = VikieNumberViewController.getVersion()
    
    // 사용자 입력 값을 처리할 바인딩 변수 선언. 수정하지 않을 경우 default 주소 사용
    @State var pinUrl = "https://www.html5cert.kr/pin"
    @State var serverUrl = "https://www.html5cert.kr/vestpin_mobile/sample/ServerTestAct.jsp"
    
    // 설정 내에서만 사용하므로 private으로 사용할 팝업 변수 생성
    @State private var showingAlert = false
    
    
    
    var body: some View {
        VStack {
            Text("모바일인증 관리")
                .font(.title)
                .padding()
            
            
            // 적용된 VP, Vikie 버전을 설정 페이지에 출력한다.
            List {
                Section("VestPIN 정보") {
                    HStack {
                        Text("VestPIN Version ")
                        Spacer()
                        Text("\(vestPinVersion)")
                            .foregroundColor(.gray)
                    }
                    .frame(height: 0.0)
                    HStack {
                        Text("Vikie Version ")
                        Spacer()
                        Text("\(vikieVersion!)")
                            .foregroundColor(.gray)
                    }
                }
                
                Section("VestPIN 서버 정보") {
                    TextField("PIN URL1", text: $pinUrl)
                    TextField("Server URL", text: $serverUrl)
                    
                }
                
                Section("모바일인증 관리") {
                    HStack {
                        Text("PIN 오류해제 및 재설정")
                        Spacer()
                        Text("0 / 5")
                            .foregroundColor(.gray)
                    }
                    HStack {
                        Text("패턴 오류해제 및 재설정")
                        Spacer()
                        Text("0 / 5")
                            .foregroundColor(.gray)
                    }
                    
                }
                
                Section("바이오인증 관리") {
                    HStack {
                        Text("사용중인 바이오 인증")
                        Spacer()
                        Text("얼굴")
                            .foregroundColor(.gray)
                    }
                    
                    HStack {
                        Text("바이오인증 오류해제 및 재설정")
                        Spacer()
                        Text("0 / 5")
                            .foregroundColor(.gray)
                    }
                }
                HStack {
                    Spacer()
                    Button("저장") {
                        print("ggg")
                    }
                    Spacer()
                }
                
            
                
            }
            
            
        }
        
    }
}

struct OptionView_Previews: PreviewProvider {
    static var previews: some View {
        OptionView()
    }
}
