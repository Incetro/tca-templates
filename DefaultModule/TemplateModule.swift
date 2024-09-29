//
//  TemplateModule.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import ComposableArchitecture

// MARK: - TemplateModule

@Reducer
public struct TemplateModule {

    // MARK: - Aliases

    public typealias State  = TemplateModuleState
    public typealias Action = TemplateModuleAction
    
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
