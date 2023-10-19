//
//  TemplateModuleListReducer.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import TCA
import TCANetworkReducers
import Combine

// MARK: - TemplateModuleListReducer

public struct TemplateModuleListReducer: ReducerProtocol {
    
    // MARK: - Feature
    
    public var body: some ReducerProtocol<TemplateModuleListState, TemplateModuleListAction> {
        Scope(state: \.reloadableTemplateModuleList, action: /TemplateModuleListAction.reloadableTemplateModuleList) {
            RelodableReducer {
                Future { _ in
                }
                .eraseToAnyPublisher()
            }
        }
        Reduce { state, action in
            switch action {
            case .onAppear:
                return .value(.reloadableTemplateModuleList(.load))
            case .reloadableTemplateModuleList(.cacheResponse(.success(let data))):
                break
            case .reloadableTemplateModuleList(.response(.success(let data))):
                break
            case .reloadableTemplateModuleList(.response(.failure(let error))),
                 .reloadableTemplateModuleList(.cacheResponse(.failure(let error))):
                break
            default:
                break
            }
            return .none
        }
        .forEach(\.templateModuleItems, action: /TemplateModuleListAction.templateModuleItem(id:action:)) {
            TemplateModuleItemReducer()
        }
    }
}
