//
//  TemplateModuleItemReducer.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import ComposableArchitecture

// MARK: - TemplateModuleItemReducer

public struct TemplateModuleItemReducer: Reducer {
    
    // MARK: - Feature
    
    public var body: some Reducer<TemplateModuleItemState, TemplateModuleItemAction> {
        Reduce { state, action in
            switch action {
            default:
                break
            }
            return .none
        }
    }
}
