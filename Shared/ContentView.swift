//
//  ContentView.swift
//  Shared
//
//  Created by 陳冠雄 on 2021/3/5.
//

import SwiftUI
import CameraView

struct ContentView: View {
    
    @State var isPresentingSkinStatusView = false
    
    var body: some View {
        NavigationView {
            VStack {
                CameraView(
                    cameraPosition: .front)
                Button("shoot", action: { print("shoot") })
                    .frame(width: 40, height: 40)
                    
            }
            .navigationTitle("SkinGUI")
            .navigationBarItems(trailing: Menu(content: {
                Button("膚質偵測", action: {
                    isPresentingSkinStatusView = true
                })
                Button("妝髮風格推薦", action: { print("妝髮風格推薦") })
                Button("帳號管理", action: { print("帳號管理") })
                Button("個人設定", action: { print("個人設定") })
            }, label: {
                Image(systemName: "line.horizontal.3")
                    .resizable()
                    .frame(width: 24, height: 24)
            }))
            .sheet(isPresented: $isPresentingSkinStatusView, content: {
                TabView {
                    SkinStatusView()
                    SkinColorView()
                    SkinoilView()
                    ProductRec()
                }
                .tabViewStyle(PageTabViewStyle())
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
