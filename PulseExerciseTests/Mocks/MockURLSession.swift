//
//  MockURLSession.swift
//  PulseExerciseTests
//
//  Created by Felix Fischer on 09.02.19.
//  Copyright © 2019 Felix Fischer. All rights reserved.
//

@testable import PulseExercise
import Foundation

class MockURLSession: URLSessionProtocol {
    enum State {
        case twoArticles
        case noArticles
        case dataIsNil
        case wrongJSONFormat
        case error
    }
    
    let state: State
    
    init(state: State) {
        self.state = state
    }
    
    func dataTask(with url: URL, completionHandler: @escaping DataTaskResult) -> URLSessionDataTaskProtocol {
        
        let dataTask = MockURLSessionDataTask()
        
        switch state {
        case .noArticles:
            let path = Bundle(for: MockURLSession.self).path(forResource: "noArticles", ofType: "json")!
            let data = try! Data(contentsOf: URL(fileURLWithPath: path))
            completionHandler(data, nil, nil)
        case .twoArticles:
            let path = Bundle(for: MockURLSession.self).path(forResource: "twoArticles", ofType: "json")!
            let data = try! Data(contentsOf: URL(fileURLWithPath: path))
            completionHandler(data, nil, nil)
        case .dataIsNil:
            completionHandler(nil, nil, nil)
        case .wrongJSONFormat:
            let path = Bundle(for: MockURLSession.self).path(forResource: "wrongJSONFormat", ofType: "json")!
            let data = try! Data(contentsOf: URL(fileURLWithPath: path))
            completionHandler(data, nil, nil)
        case .error:
            let error = NSError(domain: "DummyError", code: 0, userInfo: nil)
            completionHandler(nil, nil, error)
        }
        
        return dataTask
    }
}
