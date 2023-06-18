//
//  PersonalRewardData.swift
//  SparkleRewardBankAPP
//
//  Created by 指原奈々 on 2023/06/17.
//

import SwiftUI

class PersonalRewardData: ObservableObject {
    @Published var name: String = "nanashi"
    @Published var purposeSelectIndex = 0
    @Published var purposeSelectItem = "早起きを頑張る"
    @Published var presentSelectIndex = 0
    @Published var presentSelectItem = "スシローに行ける"
    @Published var selectedRoleDaya = 5
//    @Published var parentData = ParentData(
//        name: "TestName",
//        Goal: [
//            GoalItem(goal: "aaa"),
//            GoalItem(goal: "bbb"),
//            GoalItem(goal: "ccc")
//        ],
//        RewardsSt: [
//            RewardItem(reward: "XXX"),
//            RewardItem(reward: "YYY"),
//            RewardItem(reward: "ZZZ")
//        ],
//        passsCode: 9999
//    )
}
//BasicData: ObservableObject {
//    @Published var name: String = "nanashi"
//    @Published var purposeSelectItems = ["早起きを頑張る", "あるいて学校に行く", "ランドセルをきめたばしょにかたづける", "時間をきめてご飯を食べ終わる"]
//    @Published var presentSelectItems = ["スシローに行ける", "プールに行ける", "500円もらえる", "マンガをかってもらえる"]
//    @Published var passcode: Int = 9999
//    @Published var parentData = ParentData(
//        name: "TestName",
//        Goal: [
//            GoalItem(goal: "aaa"),
//            GoalItem(goal: "bbb"),
//            GoalItem(goal: "ccc")
//        ],
//        RewardsSt: [
//            RewardItem(reward: "XXX"),
//            RewardItem(reward: "YYY"),
//            RewardItem(reward: "ZZZ")
//        ],
//        passsCode: 9999
//    )
//}
