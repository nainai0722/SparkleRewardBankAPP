//
//  ChallengeAchievementsView.swift
//  SparkleRewardBankAPP
//
//  Created by 指原奈々 on 2023/06/10.
//

import SwiftUI
import SwiftUI

struct ChallengeAchievementsView: View {
    let startDate = Date() // 開始日付
    let numberOfDays = 7 // 表示する日数
    let maxColumns = 5 // 最大列数
    
    var body: some View {
        VStack {
            // 1行目：日数を表示
            HStack {
                ForEach(1...numberOfDays, id: \.self) { day in
                    Text("\(day)日目")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                }
            }
            
            // 2行目：日付を表示
            HStack {
                ForEach(0..<numberOfDays, id: \.self) { index in
                    let date = Calendar.current.date(byAdding: .day, value: index, to: startDate)!
                    Text(formatDate(date))
                        .font(.subheadline)
                        .frame(maxWidth: .infinity)
                }
            }
            
            // 3行目以降：データを表示（最大5列）
            ForEach(0..<numberOfRows(), id: \.self) { row in
                HStack {
                    ForEach(0..<columnsFor(row), id: \.self) { column in
                        let index = row * maxColumns + column
                        if index < numberOfDays {
                            let date = Calendar.current.date(byAdding: .day, value: index, to: startDate)!
                            let isPastDate = date < Date()
                            let isCurrentDate = Calendar.current.isDateInToday(date)
                            let isEnabled = !isPastDate && isCurrentDate
                            let buttonLabel = isEnabled ? "できたね" : "頑張ろう"
                            
                            Button(action: {
                                // ボタンがタップされたときの処理
                            }) {
                                Text(buttonLabel)
                                    .foregroundColor(.white)
                                    .padding(.vertical, 8)
                                    .padding(.horizontal, 16)
                                    .background(isEnabled ? Color.green : Color.gray)
                                    .cornerRadius(8)
                            }
                            .disabled(!isEnabled)
                            .frame(maxWidth: .infinity)
                        } else {
                            Spacer()
                        }
                    }
                }
            }
        }
        .padding()
    }
    
    func formatDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "M月d日"
        return formatter.string(from: date)
    }
    
    func numberOfRows() -> Int {
        return Int(ceil(Double(numberOfDays) / Double(maxColumns)))
    }
    
    func columnsFor(_ row: Int) -> Int {
        if row == numberOfRows() - 1 {
            return numberOfDays % maxColumns // 最終行の列数
        } else {
            return maxColumns
        }
    }
}

//struct ChallengeAchievementsView: View {
//    var body: some View {
//        Text("Hello, World!ChallengeAchievementsView")
//
//
//
//    }
//}

struct ChallengeAchievementsView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeAchievementsView()
    }
}
