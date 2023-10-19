//
//  TemplateModuleListState.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import Foundation
import TCA

// MARK: - TemplateModuleListState

public struct TemplateModuleListState: Equatable {
    
    // MARK: - Properties
    
    // MARK: - Children
    
    /// Identified array of `TemplateModuleItemState`
    ///
    /// It's represents children of `TemplateModuleItemState` module.
    /// We use it here to integrate `TemplateModuleItemState` array logic inside current module.
    /// If you change the state inside one of the `TemplateModuleItemState` module items then all changes will be saved here.
    public var templateModuleItems: IdentifiedArrayOf<TemplateModuleItemState>
}

// MARK: - Initailziers

extension TemplateModuleListState {
    
    public init() {
        self.templateModuleItems = []
    }
}
