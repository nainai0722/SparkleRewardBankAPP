//
//  BasicSettingView.swift
//  SparkleRewardBankAPP
//
//  Created by 指原奈々 on 2023/06/09.
//

import SwiftUI

struct BasicSettingView: View {
//    @State private var name = ""
    @State private var selectedRoleIndex = 0
//    @State private var purposeSelectItems = ["早起きを頑張る", "あるいて学校に行く", "ランドセルをきめたばしょにかたづける", "時間をきめてご飯を食べ終わる"]
//    @State private var presentSelectItems = ["スシローに行ける", "プールに行ける", "500円もらえる", "マンガをかってもらえる"]

    @EnvironmentObject  var basicData: BasicData


    var body: some View {
        VStack (alignment:.leading, spacing: 20) {
            HStack{
                Text("なまえ")
                TextField("なまえ", text: $basicData.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
            }
            .padding()

        
            HStack{
                Text("がんばることをえらぶ")
                Picker("がんばることをえらぶ", selection: $basicData.purposeSelectItems[0]) {
                    ForEach(basicData.purposeSelectItems, id: \.self) { item in
                        Text(item)
                    }
                }
            }
            .pickerStyle(MenuPickerStyle())
            .padding()
            HStack{
                Text("なん日とりくむかをきめる")
                Picker("なん日とりくむかをきめる", selection: $selectedRoleIndex) {
                    ForEach(1..<15) { index in
                        Text(String(index))
                    }
                }
            }
            .pickerStyle(MenuPickerStyle())
            .padding()
            HStack{
                Text("とくてんをえらぶ")
                Picker("とくてんをえらぶ", selection: $basicData.presentSelectItems[0]) {
                    ForEach(basicData.presentSelectItems, id: \.self) { item in
                        Text(item)
                    }
                }
            }
            .pickerStyle(MenuPickerStyle())
            .padding()
            Spacer()
            // 保存ボタン
            Button(action: {
                // TODO:
                        }) {
                            Image(systemName: "checkmark.circle")
                                            .font(.system(size: 50))
                                            .foregroundColor(.green)
//                                            .opacity(isEnabled ? 1.0 : 0.5)
                        }
                        .frame(maxWidth: .infinity, alignment: .trailing) // 右下に配置
        }
    }
}

struct BasicSettingView_Previews: PreviewProvider {
    static var previews: some View {
        BasicSettingView()
    }
}
