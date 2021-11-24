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
        NavigationView {
            VStack {
                HStack {
                    //Spacer()
                    Text("로그인방식을 선택해주세요")
                        .font(.title3)
                        .padding(.all, 50.0)
                    Spacer()
                }
                
                // PIN은 추후 로그인 수단에서 삭제하고, 이체(전자서명)에서만 사용(테스트용)
                NavigationLink(destination: PinLoginView()) {
                    HStack {
                        Image(systemName: "keyboard")
                            .imageScale(.large)
                            .padding(.leading, 20.0)
                        
                        Text("PIN")
                        
                        
                    }
                    .padding()
                    Spacer()
                }
                
                NavigationLink(destination: PatternLoginView()) {
                    HStack {
                        Image(systemName: "circle.grid.3x3.circle")
                            .imageScale(.large)
                            .padding(.leading, 20.0)
                        Text("패턴")
                    }
                    .padding()
                    Spacer()
                }

                
                NavigationLink(destination: PatternLoginView()) {
                    HStack {
                        Image(systemName: "faceid")
                            .imageScale(.large)
                            .padding(.leading, 20.0)
                        Text("얼굴")                    }
                    .padding()
                    Spacer()
                }
                
                
                // 더보기는 햄버거 메뉴처럼 메뉴 확장되도록 구현(자료 검색중)
                HStack {
                    Image(systemName: "ellipsis")
                        .imageScale(.large)
                        .padding(.leading, 20.0)
                    Text("더보기(눌렀을 때 하기 리스트가 펼처지도록 구현..")
                    
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
            .navigationTitle(Text("간편인증 솔루션 VestPIN"))
        }
    }
}

struct PinLoginTypeView_Previews: PreviewProvider {
    static var previews: some View {
        LoginTypeView()
    }
}
