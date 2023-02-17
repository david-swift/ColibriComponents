//
//  Color.swift
//  ColibriComponents
//
//  Created by david-swift on 19.01.23.
//

import SwiftUI

extension Color: Codable {

    /// The red RGBA value of the color.
    public var red: CGFloat { getRGBA(.red) }
    /// The green RGBA value of the color.
    public var green: CGFloat { getRGBA(.green) }
    /// The blue RGBA value of the color.
    public var blue: CGFloat { getRGBA(.blue) }
    /// The alpha RGBA value of the color.
    public var alpha: CGFloat { getRGBA(.alpha) }

    /// Initialize a color from encoded data.
    /// - Parameter decoder: Decodes the RGB values from a native format into in-memory representations.
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: RGBA.self)
        let red = try values.decode(Double.self, forKey: .red)
        let green = try values.decode(Double.self, forKey: .green)
        let blue = try values.decode(Double.self, forKey: .blue)
        let alpha = try values.decode(Double.self, forKey: .alpha)
        self.init(red: red, green: green, blue: blue, opacity: alpha)
    }

    /// The values of an RGBA representation (red, green, blue and alpha)
    internal enum RGBA: CodingKey {
        /// The red RGBA value.
        case red
        /// The green RGBA value.
        case green
        /// The blue RGBA value.
        case blue
        /// The alpha RGBA value.
        case alpha
    }

    /// Encode a color into a native format for external representation.
    /// - Parameter encoder: Encodes the RGBA value.
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: RGBA.self)
        try container.encode(red, forKey: .red)
        try container.encode(green, forKey: .green)
        try container.encode(blue, forKey: .blue)
        try container.encode(alpha, forKey: .alpha)
    }

    /// Get a certain RGBA value.
    /// - Parameter color: The value that is searched for (red, green, blue or alpha).
    /// - Returns: The value.
    internal func getRGBA(_ color: RGBA) -> CGFloat {
        var red, green, blue, alpha: CGFloat
        (red, green, blue, alpha) = (0, 0, 0, 0)
        NSColor(self).getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        switch color {
        case .red:
            return red
        case .green:
            return green
        case .blue:
            return blue
        case .alpha:
            return alpha
        }
    }

}
