//
//  TemplateModuleList.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import TCANetworkReducers
import ComposableArchitecture

// MARK: - TemplateModuleList

@Reducer
public struct TemplateModuleList {

    // MARK: - Aliases

    public typealias State  = TemplateModuleListState
    public typealias Action = TemplateModuleListAction
    
    // MARK: - Feature
    
    public var body: some Reducer<State, Action> {
        Scope(state: \.templateModuleListPagination, action: \.templateModuleListPagination) {
            IDPaginationReducer.run { id, page, pageSize in

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
        .forEach(\.templateModuleItems, action: \.templateModuleItem) {
            TemplateModuleItem()
        }
    }
}
