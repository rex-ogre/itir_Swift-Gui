//
//  SkinColorView.swift
//  SkinGui
//
//  Created by 陳冠雄 on 2021/3/5.
//

import SwiftUI

struct SkinColorView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("膚色").font(.system(size: 48))
            GeometryReader { reader in
                VStack{
                HStack {
                    Rectangle()
                        .foregroundColor(Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)))
                        .frame(width: reader.size.width / 2 - 16, height: 160)
                        .padding()
                    Rectangle()
                        .foregroundColor(Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)))
                        .frame(width: reader.size.width / 2 - 16, height: 160)
                        .padding()
                }
                    HStack {
                        Rectangle()
                            .foregroundColor(Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)))
                            .frame(width: reader.size.width / 2 - 16, height: 160)
                            .padding()
                        Rectangle()
                            .foregroundColor(Color(#colorLiteral(red: 0.5997131555, green: 0.9738318612, blue: 0.5023931829, alpha: 1)))
                            .frame(width: reader.size.width / 2 - 16, height: 160)
                            .padding()
                    }
                }
            }
            
            Text("你的膚色屬於第三級，看起來非常健康")
                .font(.system(size: 32))
            Text("1.Arbutin").font(.system(size: 24))
            Text("2.Transamin").font(.system(size: 24))
            Spacer()
        }
    }
}

struct SkinColorView_Previews: PreviewProvider {
    static var previews: some View {
        SkinColorView()
    }
}
