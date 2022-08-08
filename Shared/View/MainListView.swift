//
//  MainListView.swift
//  SwiftUImemo
//
//  Created by 전민우 on 2022/08/08.
//

import SwiftUI

struct MainListView: View {
    @EnvironmentObject var store : MemoStore
    
    var body: some View {
        NavigationView {
            List(store.list){ memo in
                MemoCell(memo: memo)
            }
            .listStyle(.plain)
            .navigationTitle("내 메모")
        }
        
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
            .environmentObject(MemoStore())
    }
}

