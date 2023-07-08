//
//  HomeView.swift
//  Alarm-Wakeup
//
//  Created by usaman9040 on 06/02/2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel: HomeViewModel

    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.dataModel) { data in 
                    CustomWidget(data: data)
                }
            }
        }
        .navigationTitle("Home View")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var viewModel = HomeViewModel()
    static var previews: some View {
        HomeView(viewModel: viewModel)
    }
}
