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
                #if os(macOS)
                let padding: CGFloat = .freeformActionPadding
                #else
                let addition = 10.0
                let padding: CGFloat = .freeformActionPadding + addition
                #endif
                FreeformToolbarAction(action)
                    .padding(padding)
            }
        }
        .padding(.freeformToolbarPadding)
        .background {
            let capsule = Capsule(style: .continuous)
                .foregroundStyle(.bar)
            #if os(macOS)
            capsule
                .shadow(
                    color: .init(nsColor: .shadowColor).opacity(.freeformToolbarShadowOpacity),
                    radius: .freeformToolbarShadowRadius,
                    y: .freeformToolbarShadowOffset
                )
            #else
            capsule
                .shadow(
                    color: .init(uiColor: .systemGray5).opacity(.freeformToolbarShadowOpacity),
                    radius: .freeformToolbarShadowRadius,
                    y: .freeformToolbarShadowOffset
                )
            #endif
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
