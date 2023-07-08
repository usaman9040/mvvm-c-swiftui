//
//  CustomWidget.swift
//  Alarm-Wakeup
//
//  Created by usaman9040 on 08/07/2023.
//

import SwiftUI

/// CustomWidget
///     - any type of repeated customisable view
struct CustomWidget: View {
    let data: DataModel
    var body: some View {
        Text(data.date)
    }
}

struct CustomWidget_Previews: PreviewProvider {
    static var previews: some View {
        CustomWidget(data: DataModel.sampleData.first!)
    }
}
