//
//  Result.swift
//  PulseExercise
//
//  Created by Felix Fischer on 09.02.19.
//  Copyright © 2019 Felix Fischer. All rights reserved.
//

import Foundation

enum Result<T,E> {
    case success(T)
    case error(E)
}
