//
//  PinLoginView.swift
//  VestPIN_SwiftUI Project
//
//  Created by J.T. Kim on 2021/11/21.
//

import SwiftUI

struct MVC: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) ->  VikieNumberViewController {
        let vc = VikieNumberViewController()
        //vc.initWithNumber(_:true)
        vc.vikieView
        return vc
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}


struct PinLoginView: View {
    var testUsers = ["강백호", "서태웅", "채소연"]
    @State private var selectedTestUser = 0
    @State var userPassword = ""
    
    @State private var isPresented = false
    
    // PIN 입력값을 secureField로 받는다
    
    //var vikieconfig = VikieConfig()
    let vikieConfig : VikieConfig = VikieConfig();
    @State private var showVC = false
//    /var vikieCont : VikieNumberViewController = VikieNumberViewController();
    
    
    var body: some View {

        NavigationView {
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
                    Text("PIN")
                        .padding()
                    SecureField("PIN을 입력해주세요", text: $userPassword)
                }
                
                
                
                Button("로그인(하드코딩 처리)") {
                    //self.isPresented.toggle()
                    //VikieCustomViewController 객체 생성
                    //vikieCustom.vikieCustomViewDelegate = self;
                    //vikieCustomViewDelegate 연결
                    
                    //[self addChildViewController:vikieCustom];
                    //addChildViewController vikiCustom 등록
                    
                    //vikieCont = vikieCont(vikieConfig)
                    //self.addSubview(vikieCont.view)
                    //vikieCont.attach()
                    //var vikieCont1 = VikieNumberViewController.init(VikieConfig())
                    VikieNumberViewController.init(VikieConfig())
                    //vikieCont1?.attach()
                    self.showVC = true
                    
                    
                }
                .fullScreenCover(isPresented: $showVC) {
                    MVC()
                }
            }
        }
    }
}

struct PinLoginView_Previews: PreviewProvider {
    static var previews: some View {
        PinLoginView()
    }
}
