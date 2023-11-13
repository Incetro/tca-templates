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
        Scope(state: \.reloadableTemplateModuleList, action: /TemplateModuleListAction.reloadableTemplateModuleList) {
            IDRelodableReducer { id in
                Future { _ in
                }
                .eraseToAnyPublisher()
            }
        }
        Reduce { state, action in
            switch action {
            case .onAppear:
                return .send(.reloadableTemplateModuleList(.load))
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
