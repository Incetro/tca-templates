//
//  TemplateModuleState.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import Foundation
import TCA
import TCANetworkReducers

// MARK: - TemplateModuleState

public struct TemplateModuleState: Equatable {
    
    // MARK: - Properties
    
    // MARK: - Children
    
    /// Identified array of `TemplateModuleItemState`
    ///
    /// It's represents children of `TemplateModuleItemState` module.
    /// We use it here to integrate `TemplateModuleItemState` array logic inside current module.
    /// If you change the state inside one of the `TemplateModuleItemState` module items then all changes will be saved here.
    public var templateModuleItems: IdentifiedArrayOf<TemplateModuleItemState>
    
    // MARK: - Pagination
    
    /// PaginationState instance
    public var templateModulePagination: PaginationState<String>
}

// MARK: - Initializers

extension TemplateModuleState {
 
    public init() {
        self.templateModulePagination = PaginationState(pageSize: 30)
        self.templateModuleItems = []
    }
}
