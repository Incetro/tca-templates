//
//  TemplateModuleItem.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import ComposableArchitecture

// MARK: - TemplateModuleItem

@Reducer
public struct TemplateModuleItem {

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
    }
}
