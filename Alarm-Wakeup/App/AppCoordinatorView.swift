//
//  ContentView.swift
//  Alarm-Wakeup
//
//  Created by usaman9040 on 06/02/2023.
//

import SwiftUI

/// AppCoordinatorView
///     - is responsible to display the main content
///     - is responsible to navigate between screen
struct AppCoordinatorView: View {
    @ObservedObject var coordinator: AppCoordinator

    var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.stateBody
        }
    }
}

struct AppCoordinatorView_Previews: PreviewProvider {
    @State static var coordinator = AppCoordinator()
    static var previews: some View {
        NavigationStack {
            AppCoordinatorView(coordinator: coordinator)
        }
    }
}
