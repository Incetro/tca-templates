//
//  TemplateModuleView.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import SwiftUI
import TCA
import TCANetworkReducers

// MARK: - TemplateModuleView

public struct TemplateModuleView: View {
    
    // MARK: - Properties
    
    /// The store powering the `TemplateModule` reducer
    public let store: StoreOf<TemplateModuleReducer>
    
    // MARK: - View
    
    public var body: some View {
        WithViewStore(store) { viewStore in
            ScrollView(showsIndicators: false) {
                LazyVStack(spacing: 16) {
                    ForEachStore(
                        store.scope(
                            state: \.templateModuleItems,
                            action: TemplateModuleAction.templateModuleItem(id:action:)
                        ),
                        content: TemplateModuleItemView.init
                    )
                    PaginationView(
                        store: store.scope(
                            state: { state in
                                state.templateModulePagination.pagination
                            },
                            action: TemplateModuleAction.templateModulePagination
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

private struct TemplateModule_Previews: PreviewProvider {
    static var previews: some View {
        TemplateModuleView(
            store: Store(
                initialState: TemplateModuleState(),
                reducer: TemplateModuleReducer()
            )
        )
    }
}
