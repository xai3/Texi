//
//  StyledString.swift
//  Texi
//
//  Created by yukiasai on 2015/12/06.
//  Copyright (c) 2015 yukiasai. All rights reserved.
//

import Foundation

public struct StyledString {
    private var elements: [StringElement]
    
    public init(elements: [StringElement]) {
        self.elements = elements
    }
    
    public init() {
        self.init(elements: [])
    }
    
    public init(elements: StringElement ...) {
        self.init(elements: elements)
    }
    
    public init(element: StringElement) {
        self.init(elements: [element])
    }
    
    public init(styledString: StyledString) {
        self.init(elements: styledString.elements)
    }
    
    public mutating func append(elements: [StringElement]) -> StyledString {
        self.elements += elements
        return self
    }
    
    public mutating func append(elements: StringElement ...) -> StyledString {
        return append(elements)
    }
    
    public mutating func append(element: StringElement) -> StyledString {
        return append([element])
    }
    
    public mutating func append(styledString: StyledString) -> StyledString {
        return append(styledString.elements)
    }
    
    public var string: String {
        return elements.reduce("") { $0 + $1.string }
    }
    
    public var attributedString: NSAttributedString {
        let mutableAttributedString = elements.reduce(NSMutableAttributedString()) {
            $0.appendAttributedString($1.attributedString)
            return $0
        }
        return NSAttributedString(attributedString: mutableAttributedString)
    }
}
