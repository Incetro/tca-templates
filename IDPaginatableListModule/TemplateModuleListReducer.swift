//
//  TemplateModuleListReducer.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import ComposableArchitecture
import TCANetworkReducers
import Combine

// MARK: - TemplateModuleListReducer

public struct TemplateModuleListReducer: Reducer {
    
    // MARK: - Feature
    
    public var body: some Reducer<TemplateModuleListState, TemplateModuleListAction> {
        Scope(state: \.templateModuleListPagination, action: /TemplateModuleListAction.templateModuleListPagination) {
            IDPaginationReducer { id, page, pageSize in
                Future { _ in
                }
                .eraseToAnyPublisher()
            }
        }
        Reduce { state, action in
            switch action {
            case .templateModuleListPagination(.response(.success(let data))):
                break
            case .templateModuleListPagination(.response(.failure(let error))):
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
