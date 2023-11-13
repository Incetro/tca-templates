//
//  TemplateModuleReducer.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import ComposableArchitecture

// MARK: - TemplateModuleReducer

public struct TemplateModuleReducer: Reducer {
    
    // MARK: - Feature
    
    public var body: some Reducer<TemplateModuleState, TemplateModuleAction> {
        Reduce { state, action in
            switch action {
            default:
                break
            }
            return .none
        }
    }
}
