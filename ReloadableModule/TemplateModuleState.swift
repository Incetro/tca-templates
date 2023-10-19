//
//  TemplateModuleState.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import Foundation
import TCANetworkReducers

// MARK: - TemplateModuleState

public struct TemplateModuleState: Equatable {
    
    // MARK: - Properties
    
    // MARK: - Relodable
    
    /// ReloadableState instace for network operations
    public var reloadableTemplateModule: ReloadableState<String, NSError>
}

// MARK: - Initializers

extension TemplateModuleState {
 
    public init() {
        self.reloadableTemplateModule = ReloadableState()
    }
}
