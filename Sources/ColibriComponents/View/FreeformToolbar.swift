//
//  FreeformToolbar.swift
//  ColibriComponents
//
//  Created by david-swift on 06.02.23.
//

import SwiftUI

/// A toolbar in the style used in the  Freeform app.
/// https://support.apple.com/guide/freeform/welcome/mac
struct FreeformToolbar: View {

    /// The actions in the toolbar.
    var actions: [ToolbarAction]

    /// The view's body.
    var body: some View {
        HStack {
            ForEach(actions) { action in
                FreeformToolbarAction(action)
                    .padding(.freeformActionPadding)
            }
        }
        .padding(.freeformToolbarPadding)
        .background {
            Capsule(style: .continuous)
                .foregroundStyle(.bar)
                .shadow(
                    color: .init(nsColor: .shadowColor).opacity(.freeformToolbarShadowOpacity),
                    radius: .freeformToolbarShadowRadius,
                    y: .freeformToolbarShadowOffset
                )
        }
    }

    /// Initialize a new toolbar.
    /// - Parameter actions: The toolbar actions.
    init(@ArrayBuilder<ToolbarAction> actions: @escaping () -> [ToolbarAction]) {
        self.actions = actions()
    }

}

/// Previews for the ``FreeformToolbar``.
struct FreeformToolbar_Previews: PreviewProvider {

    /// The previews.
    static var previews: some View {
        Text(.init())
            .padding()
            .padding()
            .freeformToolbar(visibility: true) {
                ToolbarAction("Hello", symbol: .init(systemSymbol: .return)) {
                    print("Hello")
                }
                .isOn(true)
                ToolbarAction("World", symbol: .init(systemSymbol: .function)) {
                    print("World")
                }
                ToolbarAction("Nice", symbol: .init(systemSymbol: .circleFill)) {
                    print("Nice")
                }
            }
    }

}
