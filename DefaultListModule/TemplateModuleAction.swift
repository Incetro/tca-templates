//
//  TemplateModuleAction.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import Foundation

// MARK: - TemplateModuleAction

public enum TemplateModuleAction: Equatable {
    
    // MARK: - Cases
    
    /// General action that calls when view appears
    case onAppear
    
    /// General action that calls when view disappears
    case onDisappear
    
    // MARK: - Children
    
    /// Child action for `TemplateModuleItem` module.
    ///
    /// It's necessary as we use `ForEach` scope operator in current module's reducer.
    /// In short, the `templateModuleItem` case means that every action in `TemplateModuleItem` module
    /// will be sent to current module with target element identifier
    case templateModuleItem(id: TemplateModuleItemState.ID, action: TemplateModuleItemAction)
}
