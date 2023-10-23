//
//  TemplateModuleAction.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import Foundation
import TCANetworkReducers

// MARK: - TemplateModuleAction

public enum TemplateModuleAction: Equatable {
    
    // MARK: - Cases
    
    /// General action that calls when view appears
    case onAppear
    
    /// General action that calls when view disappears
    case onDisappear
    
    // MARK: - Reloadable
    
    case reloadableTemplateModule(ReloadableAction<String, NSError>)
}
