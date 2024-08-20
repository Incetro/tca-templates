//
//  TemplateModuleListView.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import SwiftUI
import TCANetworkReducers
import ComposableArchitecture

// MARK: - TemplateModuleListView

public struct TemplateModuleListView: View {
    
    // MARK: - Properties
    
    /// The store powering the `TemplateModuleList` reducer
    public let store: StoreOf<TemplateModuleList>
    
    // MARK: - View
    
    public var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVStack(spacing: 16) {
                  ForEachStore(
                    store.scope(
                        state: \.templateModuleItems,
                        action: \.templateModuleItem
                    ),
                    content: TemplateModuleItemView.init
                )
                PaginationView(
                    store: store.scope(
                        state: { state in
                            state.templateModuleListPagination.pagination
                        },
                        action: TemplateModuleListAction.templateModuleListPagination
                    ),
                    loader: {
                        ProgressView()
                    }
                )
            }
        }
        .onAppear {
            store.send(.onAppear)
        }
        .onDisappear {
            store.send(.onDisappear)
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
