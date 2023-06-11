//
//  HomeView.swift
//  SparkleRewardBankAPP
//
//  Created by 指原奈々 on 2023/06/09.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        NavigationStack{
            VStack{
                Spacer()
                NavigationLink(destination: ChallengeAchievementsView().navigationTitle("きょうはとりくめたかな？")){
                    // TODO: ボタンっぽい装飾にする
                    Text("はじめる")
                        
                }
                Spacer()
                HStack{
                    // TODO: 左寄せかつボタンサイズ調整タップ時アニメーション
                    NavigationLink(destination: BasicSettingView().navigationTitle("もくひょうをきめよう")){
                        Image(systemName:"rectangle.and.pencil.and.ellipsis")
                    }
                    Spacer()
                    // TODO: 左寄せかつボタンサイズ調整タップ時アニメーション
                    NavigationLink(destination: ParentSettingView().navigationTitle("保護者が設定する画面")){
                        Image(systemName:"lock.doc")
                    }
                }
                    
                
            }
            .navigationTitle("")
            .padding()
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
