//
//  Double.swift
//  ColibriComponents
//
//  Created by david-swift on 23.01.23.
//
// swiftlint:disable no_magic_numbers

import Foundation

extension Double {

    /// The opacity of the background of a custom toolbar group that is not hovered.
    internal static var toolbarGroupBackground: Self { 0.5 }
    /// The opacity of the secondary background of a custom toolbar group that is hovered.
    internal static var toolbarGroupSecondaryBackground: Self { 0.2 }
    /// The speed of hover animations.
    public static var hoverAnimationSpeed: Self { 2 }
    /// The delay of the hover animation in a custom toolbar group when the hovering starts.
    internal static var toolbarGroupAnimationDelay: Self { 0.2 }
    /// The opacity of the stroke in custom toolbars.
    internal static var toolbarStrokeOpacity: Self { 0.2 }
    /// The opacity of the background of a selection item if selected.
    internal static var selectionSymbolBackgroundOpacity: Self { 0.1 }
    /// The opacity of the background of a selection item if hovered.
    internal static var hoveredSymbolBackgroundOpacity: Self { 0.07 }
    /// The opacity of the shadow of a Freeform toolbar.
    internal static var freeformToolbarShadowOpacity: Self { 0.5 }
    /// The opacity of the circle of a Freeform toolbar action when hovered.
    internal static var freeformBackgroundOpacity: Self { 0.1 }
    /// The opacity of an action of a Freeform toolbar when not activated.
    internal static var freeformActionOpacity: Self { 0.7 }

}
