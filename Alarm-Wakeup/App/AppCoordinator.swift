//
//  AppCoordinator.swift
//  Alarm-Wakeup
//
//  Created by usaman9040 on 06/02/2023.
//

import SwiftUI

/// App Coordinator
///     - is responsible to handle and main track of children and navigation path
final class AppCoordinator: ObservableObject, Coordinator {
    var state: State
    @Published var path = NavigationPath()
    var parentCoordinator: Coordinator?
    var children: [Coordinator]

    init() {
        self.state = .dashboard
        self.path = NavigationPath()
        self.children = []
    }

    @ViewBuilder
    var stateBody: some View {
        switch state {
        case .dashboard:
            goToDashboard()
        }
    }

    // MARK: Navigation functions
    func goToDashboard() -> some View {
        let coordinator = DashboardCoordinator(parentCoordinator: self)
        children.append(coordinator)
        return DashboardCoordinatorView(coordinator: coordinator)
    }
}

// MARK: - State

extension AppCoordinator {
    /// State is main content of view
    enum State {
        case dashboard
    }
}
