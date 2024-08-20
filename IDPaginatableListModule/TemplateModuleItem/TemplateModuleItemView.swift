//
//  TemplateModuleItemView.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import SwiftUI
import ComposableArchitecture

// MARK: - TemplateModuleItemView

public struct TemplateModuleItemView: View {
    
    // MARK: - Properties
    
    /// The store powering the `TemplateModuleItem` reducer
    public let store: StoreOf<TemplateModuleItemReducer>
    
    // MARK: - View
    
    public var body: some View {
        Text("This is TemplateModuleItem \(store.id)")
            .font(.title)
            .padding()
    }
}

// MARK: - Preview

#Preview {
    TemplateModuleItemView(
        store: Store(
            initialState: TemplateModuleItemState(),
            reducer: { TemplateModuleItem() }
        )
    )
}
