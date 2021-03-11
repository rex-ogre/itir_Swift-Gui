//
//  SkinStatusView.swift
//  SkinGui
//
//  Created by 陳冠雄 on 2021/3/5.
//

import SwiftUI


struct SkinStatusView: View {
    
        
    var body: some View {
        VStack {
            RadarChart(data: [0.5,0.5,0.6,0.3,0.8,0.1])
            
                .padding()
            VStack(alignment: .leading) {
                Text("您的肌膚出油較多，現階段護理要點如下:")
                    .padding(.vertical, 4).font(.system(size: 36))
                Text("1.適度使用控油產品，做好基礎保濕")
                    .padding(.vertical, 2).font(.system(size: 24))
                Text("2.針對痘痘可以使用去油產品").font(.system(size: 24))
            }
            Spacer()
        }
    }
}

struct SkinStatusView_Previews: PreviewProvider {
    static var previews: some View {
        SkinStatusView()
    }
}
