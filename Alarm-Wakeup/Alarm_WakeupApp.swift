//
//  Alarm_WakeupApp.swift
//  Alarm-Wakeup
//
//  Created by usaman9040 on 06/02/2023.
//

import SwiftUI

@main
/// MVVM-C in SwiftUI
/// Start of the App - initialise the AppCoordinator
///     - In SwiftUI, Only coordinator class didn't work to create MVVM-C pattern.
///     - C in SwiftUI are combined and pair with it view, Coordinator & CoordinatorView in order to perform Coordinator task.
struct Alarm_WakeupApp: App {
    var body: some Scene {
        WindowGroup {
            AppCoordinatorView(coordinator: AppCoordinator())
        }
    }
}
