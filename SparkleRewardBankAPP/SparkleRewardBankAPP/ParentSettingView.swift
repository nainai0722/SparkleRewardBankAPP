//
//  ParentSettingView.swift
//  SparkleRewardBankAPP
//
//  Created by 指原奈々 on 2023/06/10.
//

import SwiftUI

struct ParentSettingView: View {
    @EnvironmentObject  var basicData: BasicData
    @State private var name = ""
    @State private var defaultparentData = ParentData(
        name: "TestName",
        Goal: [
            GoalItem(goal: "aaa"),
            GoalItem(goal: "bbb"),
            GoalItem(goal: "ccc")
        ],
        RewardsSt: [
            RewardItem(reward: "XXX"),
            RewardItem(reward: "YYY"),
            RewardItem(reward: "ZZZ")
        ],
        passsCode: 9999
    )
//    (name: "優乃", Goal: ["早起きを頑張る", "あるいて学校に行く", "ランドセルをきめたばしょにかたづける", "時間をきめてご飯を食べ終わる"], RewardsSt:  ["スシローに行ける", "プールに行ける", "500円もらえる", "マンガをかってもらえる"], passsCode:9999)
    var body: some View {
        Text("ParentSettingView")
        VStack (alignment:.leading, spacing: 5) {
            HStack{
                Text("なまえ")
                TextField("なまえ", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
            }
            .padding()
            
//            ForEach(defaultparentData.Goal){ goal in
//                HStack{
//                    Text("目標")
//                    TextField("目標", text: goal.goal)
//                        .textFieldStyle(RoundedBorderTextFieldStyle())
//                        .padding()
//                }
//            }
            ForEach(0..<3) { index in
                HStack{
                    Text("目標" + String(index + 1))
                    TextField("目標", text: $name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                }
            }
            .padding()
            
            ForEach(0..<3) { index in
                HStack{
                    Text("報酬" + String(index + 1))
                    TextField("報酬", text: $name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                }
            }
            .padding()
            
            HStack{
                Text("パスコード")
                TextField("パスコード", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
            }
            .padding()
        }
    }
}

struct ParentSettingView_Previews: PreviewProvider {
    static var previews: some View {
        ParentSettingView()
        
    }
}
