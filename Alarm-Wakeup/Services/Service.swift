//
//  Service.swift
//  Alarm-Wakeup
//
//  Created by usaman9040 on 3/13/23.
//

import Foundation
import AVFoundation
import UIKit

/// HasService protocol
///     - will expose its instance
protocol HasSomeService {
    var someService: SomeService { get }
}

/// Service
class SomeService {
    
    func fetchData() -> [DataModel] {
        return DataModel.sampleData
    }
}
