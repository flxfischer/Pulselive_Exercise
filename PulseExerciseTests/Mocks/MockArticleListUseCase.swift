//
//  MockArticleListUseCase.swift
//  PulseExerciseTests
//
//  Created by Felix Fischer on 09.02.19.
//  Copyright © 2019 Felix Fischer. All rights reserved.
//

@testable import PulseExercise
import Foundation

class MockArticleListUseCase: ArticleListUseCaseProtocol {
    
    enum State {
        case noArticles
        case twoArticles
        case error
    }
    
    let state: State
    
    init(state: State) {
        self.state = state
    }
    
    func fetchArticleListItems(completion: @escaping (Result<[ArticleListItem], ResponseError>) -> Void) {
        switch state {
        case .noArticles:
            completion(.success([]))
        case .twoArticles:
            let article1 = ArticleListItem(id: 0, title: "title1", subtitle: "subtitle1", date: Date())
            let article2 = ArticleListItem(id: 1, title: "title2", subtitle: "subtitle2", date: Date())
            completion(.success([article1, article2]))
        case .error:
            completion(.error(ResponseError.dataIsNil))
        }
    }
    
    
}
