//
//  ContentView.swift
//  VestPIN_SwiftUI Project
//
//  Created by J.T. Kim on 2021/11/12.
//

import SwiftUI

// VP 정상 로그 시 로그 출력 함수 추가
func pinLoadTest() {
    print("VestPIN Version: \(VestPIN.getVersion()!)")
}

// vikie 정상 로그 시 로그 출력할 추가
func vikieLoadTest() {
    print("Vikie Version: \(VikieNumberViewController.getVersion()!)")
    
}


// App loading 시 실행할 init method
func nativePinInit() {
    pinLoadTest()
    vikieLoadTest()
}

struct ContentView: View {
//    @State private var selection: Tab = .register
//    // 등록된 사용자의 숫자가 탭뷰에 뱃지로 표시되도록 변수 추가
//    var registeredUserNumber = 3
//
//    enum Tab {
//        case categoryHome
//        case register
//        case auth
//        case sign
//        case renew
//        case remove
//    }
    
    var body: some View {
        CategoryHome()
        .onAppear(perform: nativePinInit)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// 앱에서 사용할 로고 이미지 struct
struct UserImage : View {
    var body: some View {
        return Image("appLogo")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 75)
    }
}
