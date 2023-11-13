//
//  TemplateModuleListView.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import SwiftUI
import ComposableArchitecture
import TCANetworkReducers

// MARK: - TemplateModuleListView

public struct TemplateModuleListView: View {
    
    // MARK: - Properties
    
    /// The store powering the `TemplateModuleList` reducer
    public let store: StoreOf<TemplateModuleListReducer>
    
    // MARK: - View
    
    public var body: some View {
        WithViewStore(store) { viewStore in
            ScrollView(showsIndicators: false) {
                LazyVStack(spacing: 16) {
                    ForEachStore(
                        store.scope(
                            state: \.templateModuleItems,
                            action: TemplateModuleListAction.templateModuleItem(id:action:)
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
                viewStore.send(.onAppear)
            }
            .onDisappear {
                viewStore.send(.onDisappear)
            }
        }
    }
}

// MARK: - Preview

#Preview {
    TemplateModuleListView(
        store: Store(
            initialState: TemplateModuleListState(),
            reducer: TemplateModuleListReducer()
        )
    )
}
