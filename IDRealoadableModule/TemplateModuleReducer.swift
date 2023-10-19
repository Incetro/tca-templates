//
//  TemplateModuleReducer.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import TCA
import TCANetworkReducers
import Combine

// MARK: - TemplateModuleReducer

public struct TemplateModuleReducer: ReducerProtocol {
    
    // MARK: - Feature
    
    public var body: some ReducerProtocol<TemplateModuleState, TemplateModuleAction> {
        Scope(state: \.reloadableTemplateModule, action: /TemplateModuleAction.reloadableTemplateModule) {
            IDRelodableReducer { id in
                Future { _ in
                }
                .eraseToAnyPublisher()
            }
        }
        Reduce { state, action in
            switch action {
            case .onAppear:
                return .value(.reloadableTemplateModule(.load))
            default:
                break
            }
            return .none
        }
    }
}
