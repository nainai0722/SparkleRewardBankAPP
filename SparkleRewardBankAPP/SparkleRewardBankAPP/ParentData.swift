//
//  ParentData.swift
//  SparkleRewardBankAPP
//
//  Created by 指原奈々 on 2023/06/12.
//

import SwiftUI

struct ParentData: Identifiable {
    let id = UUID()
    var name: String
    var Goal:[GoalItem]
    var RewardsSt: [RewardItem]
    var passCode: Int
    
    init(name: String, Goal: [GoalItem], RewardsSt: [RewardItem], passsCode: Int) {
        self.name = name
        self.Goal = Goal
        self.RewardsSt = RewardsSt
        self.passCode = passsCode
    }
}

struct GoalItem: Identifiable {
    let id: UUID = UUID()
    let goal: String
}

struct RewardItem: Identifiable {
    let id: UUID = UUID()
    let reward: String
}

