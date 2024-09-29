//
//  TemplateModuleListView.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import SwiftUI
import ComposableArchitecture

// MARK: - TemplateModuleListView

public struct TemplateModuleListView: View {
    
    // MARK: - Properties
    
    /// The store powering the `TemplateModuleList` feature
    public let store: StoreOf<TemplateModuleList>
    
    // MARK: - Initializers
    
    /// Default initializer
    /// - Parameter store: The store powering the `TemplateModuleList` feature
    public init(store: StoreOf<TemplateModuleList>) {
        self.store = store
    }
    
    // MARK: - View
    
    public var body: some View {
        VStack(spacing: 0) {
            ForEachStore(
                store.scope(
                    state: \.templateModuleItems,
                    action: \.templateModuleItem
                ),
                content: TemplateModuleItemView.init
            )
        }
    }
}

// MARK: - Preview

#Preview {
    TemplateModuleListView(
        store: Store(
            initialState: TemplateModuleListState(),
            reducer: { TemplateModuleList() }
        )
    )
}
