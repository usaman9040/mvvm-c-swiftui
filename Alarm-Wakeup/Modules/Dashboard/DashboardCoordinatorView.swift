//
//  DashboardCoordinatorView.swift
//  Alarm-Wakeup
//
//  Created by usaman9040 on 06/02/2023.
//

import SwiftUI

struct DashboardCoordinatorView: View {
    @ObservedObject var coordinator: DashboardCoordinator

    init(coordinator: DashboardCoordinator) {
        self.coordinator = coordinator
    }

    var body: some View {
        NavigationStack(path: $coordinator.path) {
            VStack {
                TabView {
                    ForEach(DashboardCoordinator.State.allCases, id: \.id) { state in
                        tabContent(for: state)
                            .tabItem {
                                state.image
                            }
                    }
                }
            }
        }
        .environmentObject(coordinator)
    }

    func tabContent(for state: DashboardCoordinator.State) -> some View {
       return coordinator.getTabBarView(for: state)
    }
}

struct DashboardCoordinatorView_Previews: PreviewProvider {
    static var coordinator = DashboardCoordinator(parentCoordinator: nil)
    static var previews: some View {
        NavigationStack {
            DashboardCoordinatorView(coordinator: coordinator)
        }
    }
}
