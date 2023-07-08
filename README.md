# MVVM-C in SwiftUI iOS App

- Coordinator Pattern in SwiftUI
- Every Coordinator in SwiftUI depend on Coordinator and Coordinator View
- With Coordinator conforming some core functionality and maintaining the state  the main content/body of view

# Project overview

- Divide module base solution with every module contain View + ViewModel, some of major module also contain Coordinator to follow some separate flow.
- Start from `AppCoordinator` -> ```AppCoordinatorView(coordinator: AppCoordinator())```
- Navigating from towards DashBoard that show bottom tab
- Every Tab is separate state for Dashboard coordinator

# Service Layer

- Service layer handle from some `AppDependencies` shared class.
- Service layer conform each service instance protocol with the name of `HasService`
- This `HasService` protocol confirm the get property of Service class
- Each ViewModel access this service by using shared instances of `AppDependencies` with the following pattern

    ``typealias Dependencies = HasSomeService``
    
    ``init(dependencies: Dependencies = AppDependencies.shared) {``
        ``self.someService = dependencies.someService``
        ``initialiseData()``
    ``}``
