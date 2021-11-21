//
//  PinLoginTypeView.swift
//  VestPIN_SwiftUI Project
//
//  Created by J.T. Kim on 2021/11/20.
//

import SwiftUI

func pinLogin() {
    print("PIN 로그인 버튼 pressed")
}

struct LoginTypeView: View {
    var body: some View {
        VStack {
            
            HStack {
                Spacer()
                Text("로그인방식을 선택해주세요")
                    .font(.title3)
                Spacer()
            }
            .padding([.leading, .bottom], 30.0)
            
            
            HStack {
                Image(systemName: "circle.grid.3x3.circle")
                    .imageScale(.large)
                    .padding(.leading, 20.0)
                Text("패턴")
                
                Spacer()
            }
            .padding()
            
            HStack {
                Image(systemName: "faceid")
                    .imageScale(.large)
                    .padding(.leading, 20.0)
                Text("얼굴")
                
                Spacer()
            }
            .padding()
            
            HStack {
                Image(systemName: "ellipsis")
                    .imageScale(.large)
                    .padding(.leading, 20.0)
                Text("더보기")
                
                Spacer()
            }
            .padding()
            Divider()
            
            // 더보기 눌렀을 때 보여질 리스트
            List {
                Text("공동인증서")
                Text("코스콤 클라우드 인증서")
                Text("네이버 로그인")
                Text("카카오 로그인")
                Text("뱅크사인")
            }
        }
    }
}

struct PinLoginTypeView_Previews: PreviewProvider {
    static var previews: some View {
        LoginTypeView()
    }
}
