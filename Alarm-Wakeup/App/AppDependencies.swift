//
//  AppDependencies.swift
//  Alarm-Wakeup
//
//  Created by usaman9040 on 3/13/23.
//

import Foundation

/// AppDependencies
///     - is shared class which will used to share service across the classes
///     - this class is conform to every service protocol i.e HasService & HasService2 & HasService3.
///     - from this protocol method it will only expose the required services to desire class
///     - all the services manage under one class
class AppDependencies: HasSomeService {
    static let shared = AppDependencies()

    lazy var someService: SomeService = SomeService()
}
