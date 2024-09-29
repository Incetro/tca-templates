//
//  TemplateModuleItemState.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import ComposableArchitecture

// MARK: - TemplateModuleItemState

@ObservableState
public struct TemplateModuleItemState: Equatable, Identifiable {
    
    // MARK: - Properties
    
    /// Item identifier
    public let id: String
}

// MARK: - Initailizers

extension TemplateModuleItemState {

    public init(id: String) {
        self.id = id
    }
}
