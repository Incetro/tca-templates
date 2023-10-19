//
//  TemplateModuleReducer.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import TCA

// MARK: - TemplateModuleReducer

public struct TemplateModuleReducer: ReducerProtocol {
    
    // MARK: - Feature
    
    public var body: some ReducerProtocol<TemplateModuleState, TemplateModuleAction> {
        Reduce { state, action in
            switch action {
            default:
                break
            }
            return .none
        }
        .forEach(\.templateModuleItems, action: /TemplateModuleAction.templateModuleItem(id:action:)) {
            TemplateModuleItemReducer()
        }
    }
}
