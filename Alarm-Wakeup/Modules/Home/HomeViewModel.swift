//
//  HomeViewModel.swift
//  Alarm-Wakeup
//
//  Created by usaman9040 on 06/02/2023.
//

import SwiftUI
import CoreData

class HomeViewModel: ObservableObject {
    typealias Dependencies = HasSomeService

    @EnvironmentObject var coordinator: DashboardCoordinator
    
    var someService: SomeService
    @Published var dataModel: [DataModel]

    init(dependencies: Dependencies = AppDependencies.shared) {
        self.someService = dependencies.someService
        dataModel = []
        initialiseData()
    }
    
    func initialiseData() {
        dataModel = someService.fetchData()
    }
}
