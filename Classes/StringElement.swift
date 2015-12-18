//
//  StringElement.swift
//  Texi
//
//  Created by yukiasai on 2015/12/06.
//  Copyright (c) 2015 yukiasai. All rights reserved.
//

import Foundation

public protocol StringElement {
    var string: String { get }
    var attributedString: NSAttributedString { get }
    mutating func stylize(style: Style) -> StyledStringElement
}

public struct StyledStringElement: StringElement {
    public var string: String
    public var style: Style
    
    public var attributedString: NSAttributedString {
        return NSAttributedString(string: string, attributes: [
            NSForegroundColorAttributeName: style.color,
            NSFontAttributeName: style.font
            ])
    }
    
    public mutating func stylize(style: Style) -> StyledStringElement {
        self.style = style
        return self
    }
}

extension String: StringElement {
    public var string: String {
        return self
    }
    
    public var attributedString: NSAttributedString {
        return NSAttributedString(string: self)
    }
    
    public func stylize(style: Style) -> StyledStringElement {
        return StyledStringElement(string: self, style: style)
    }
}
