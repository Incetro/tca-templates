//
//  TemplateModuleListReducer.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import ComposableArchitecture

// MARK: - TemplateModuleListReducer

@Reducer
public struct TemplateModuleListReducer {

    // MARK: - Aliases

    public typealias State  = TemplateModuleItemState
    public typealias Action = TemplateModuleItemAction
    
    // MARK: - Feature
    
    public var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
            default:
                break
            }
            return .none
        }
        .forEach(\.templateModuleItems, action: \.TemplateModuleListAction.templateModuleItem) {
            TemplateModuleItemReducer()
        }
    }
}
