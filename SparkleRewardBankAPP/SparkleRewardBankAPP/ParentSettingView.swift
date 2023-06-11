//
//  ParentSettingView.swift
//  SparkleRewardBankAPP
//
//  Created by 指原奈々 on 2023/06/10.
//

import SwiftUI

struct ParentSettingView: View {
    @State private var name = ""
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
