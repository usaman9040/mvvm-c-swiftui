//
//  DashboardCoordinator.swift
//  Alarm-Wakeup
//
//  Created by usaman9040 on 06/02/2023.
//

import SwiftUI

final class DashboardCoordinator: ObservableObject, Coordinator {

    @Published var path: NavigationPath
    var parentCoordinator: Coordinator?
    var children: [Coordinator]
    var state: State

    init(parentCoordinator: Coordinator?) {
        self.state = .home
        self.path = NavigationPath()
        self.parentCoordinator = parentCoordinator
        self.children = []
    }

//    @ViewBuilder
    func getTabBarView(for state: State) -> some View {
        return getStateView(for: state)
    }

    @ViewBuilder
    private var stateBody: some View {
        getStateView(for: self.state)
    }

    // MARK: Navigation functions

    @ViewBuilder
    private func getStateView(for state: State) -> some View {
        switch state {
        case .home:
            home
        case .view1:
            view
        case .view2:
            view
        case .settings:
            setting
        }
    }

    // MARK: Navigation functions

    lazy var home: some View = {
        let viewModel = HomeViewModel()
        return HomeView(viewModel: viewModel)
    }()

    lazy var view: some View = {
        return ViewView()
    }()

    lazy var setting: some View = {
        return SettingsView()
    }()
}

// MARK: State

extension DashboardCoordinator {

    // Make this case to CaseIterable to use this in Foreach
    // Identifiable to set self and a id instead of self.rawValue
    // String used to use rawValue in id for ForEach
    // Another purpose it can be used as navigation Title or Tab Bar item with Text
    enum State: String, CaseIterable, Identifiable {
        var id: String { self.rawValue }

        case home = "Home"
        case view1 = "View 1"
        case view2 = "View 2"
        case settings = "Settings"

        // For TabBarItem Icon
        var image: Image {
            switch self {
            case .home: return Image(systemName: "moon.stars")
            case .view1: return Image(systemName: "chart.xyaxis.line")
            case .view2: return Image(systemName: "chart.xyaxis.line")
            case .settings: return Image(systemName: "gearshape")
            }
        }
    }
}
