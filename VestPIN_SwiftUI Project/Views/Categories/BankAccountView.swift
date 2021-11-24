//
//  BankAccountView.swift
//  VestPIN_SwiftUI Project
//
//  Created by J.T. Kim on 2021/11/20.
//

import SwiftUI

struct BankAccountView: View {
    enum Tab {
        case categoryHome
        case register
        case auth
        case sign
        case renew
        case remove
    }

    
    
    @State private var selection: Tab = .register
    // 등록된 사용자의 숫자가 탭뷰에 뱃지로 표시되도록 변수 추가
    var registeredUserNumber = 3
    
    var body: some View {
        TabView(selection: $selection) {
            AccountPageView()
                .badge(registeredUserNumber)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("메인")
                }
                .tag(0)
            
            AccountHistoryView()
                .tabItem {
                    Label ("이체내역", systemImage: "person.badge.plus")
                }
                .tag(1)
        
            ChangeView()
                .tabItem {
                    Label ("전자서명", systemImage: "square.and.pencil")
                }
                .tag(2)
            
//            RemoveView()
//                .tabItem {
//                    Label ("삭제", systemImage: "trash.fill")
//                }
//                .tag(3)

            OptionView()
                .tabItem {
                    Label ("설정 페이지", systemImage: "gearshape.fill")
                }
                .tag(4)
        }
    }
}

struct BankAccountView_Previews: PreviewProvider {
    static var previews: some View {
        BankAccountView()
    }
}
