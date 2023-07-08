//
//  DataModel.swift
//  Alarm-Wakeup
//
//  Created by usaman9040 on 3/22/23.
//

import SwiftUI

/// DataModel
struct DataModel: Identifiable {
    var id: UUID = UUID()
    var date: String
}


extension DataModel {
    /// Sample Data
    ///     - is used for testing and preview
    static let sampleData: [DataModel] = [DataModel(date: "Data 1"), DataModel(date: "Data 2")]
}
