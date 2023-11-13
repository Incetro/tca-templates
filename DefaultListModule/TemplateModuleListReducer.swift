//
//  TemplateModuleListReducer.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import ComposableArchitecture

// MARK: - TemplateModuleListReducer

public struct TemplateModuleListReducer: Reducer {
    
    // MARK: - Feature
    
    public var body: some Reducer<TemplateModuleListState, TemplateModuleListAction> {
        Reduce { state, action in
            switch action {
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
