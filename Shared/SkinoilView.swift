//
//  SkinoilView.swift
//  SkinGui
//
//  Created by 陳冠雄 on 2021/3/9.
//

import SwiftUI
import SwiftUICharts

struct SkinoilView: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text("出油情況").font(.system(size: 48))
                BarChartView(data: ChartData(values: [("2018 Q4",63150), ("2019 Q1",50900), ("2019 Q2",77550), ("2019 Q3",79600), ("2019 Q4",92550)]), title: "Sales", legend: "出油情況",form: ChartForm.extraLarge)
                Spacer()
                Text("你的膚質狀況為油性，除了日常清潔外，可使用含有以下成份的產品")
                    .font(.system(size: 32))
                Text("1.Tea Tree")
                    .font(.system(size: 24))
                Text("2.Hamamelis virginiana")
                    .font(.system(size: 24))
            }
            Spacer()
        }
        
    }
}

struct SkinoilView_Previews: PreviewProvider {
    static var previews: some View {
        SkinoilView()
    }
}
