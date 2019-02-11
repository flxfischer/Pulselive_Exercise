//
//  DateFormatter.swift
//  PulseExercise
//
//  Created by Felix Fischer on 09.02.19.
//  Copyright © 2019 Felix Fischer. All rights reserved.
//

import Foundation

extension DateFormatter {
    static let customDate: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy HH:mm"
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        formatter.locale = Locale(identifier: "en_UK")
        return formatter
    }()
}
