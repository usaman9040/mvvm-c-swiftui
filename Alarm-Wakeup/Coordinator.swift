//
//  Coordinator.swift
//  Alarm-Wakeup
//
//  Created by usaman9040 on 06/02/2023.
//

import SwiftUI

/// Coordinator Protocol
///     - Every Coordinator must be capable to perform some core task
protocol Coordinator {
    var path: NavigationPath { get set }
    var parentCoordinator: Coordinator? { get set }
    var children: [Coordinator] { get set }
}
