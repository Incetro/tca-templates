//
//  TemplateModuleItemState.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import Foundation

// MARK: - TemplateModuleItemState

public struct TemplateModuleItemState: Equatable, Identifiable {
    
    // MARK: - Properties
    
    public let id: String
}

// MARK: - Initailizers

extension TemplateModuleItemState {
    
    public init() {
        self.id = "\(Int.random(in: 0...999))"
    }
}
