//
//  TemplateModuleReducer.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import ComposableArchitecture
import TCANetworkReducers
import Combine

// MARK: - TemplateModuleReducer

public struct TemplateModuleReducer: Reducer {
    
    // MARK: - Feature
    
    public var body: some Reducer<TemplateModuleState, TemplateModuleAction> {
        Scope(state: \.reloadableTemplateModule, action: /TemplateModuleAction.reloadableTemplateModule) {
            RelodableReducer {
                Future { _ in
                }
                .eraseToAnyPublisher()
            }
        }
        Reduce { state, action in
            switch action {
            case .onAppear:
                return .send(.reloadableTemplateModule(.load))
            case .reloadableTemplateModule(.cacheResponse(.success(let data))):
                break
            case .reloadableTemplateModule(.response(.success(let data))):
                break
            case .reloadableTemplateModule(.response(.failure(let error))),
                 .reloadableTemplateModule(.cacheResponse(.failure(let error))):
                break
            default:
                break
            }
            return .none
        }
    }
}
