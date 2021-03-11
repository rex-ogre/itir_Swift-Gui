//
//  ProductRec.swift
//  SkinGui
//
//  Created by 陳冠雄 on 2021/3/9.
//

import SwiftUI

struct ProductRec: View {
    
    let content = """
    L'OREAL  青春密碼酵素精華肌底液\n
    主要成分：\n
    glycerin、diimethicone、mannose...等。 \n
    Yahoo奇摩購物商城 NT$1200 \n
    Momo購物 NT$1480 \n
    樂天購物 NT$1500  \n
    """
    let content2="""
LANCOME  超未來肌因賦活露(小黑瓶) \n
    主要成分： \n
    glycerin、diimethicone、mannose...等。 \n
    Yahoo奇摩購物商城 NT$3000 \n
    Momo購物 NT$3200 \n
    樂天購物 NT$3,600 \n
"""
    var body: some View {
        VStack{
            Text(content)
                .background(Rectangle().stroke())
//            Text(content2)
//                .background(Rectangle().stroke())
            Text(content)
                .background(Rectangle().stroke())
            Spacer()
        }
    }
}

struct ProductRec_Previews: PreviewProvider {
    static var previews: some View {
        ProductRec()
    }
}
