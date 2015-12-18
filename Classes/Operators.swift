//
//  Operators.swift
//  Texi
//
//  Created by yukiasai on 2015/12/06.
//  Copyright (c) 2015 yukiasai. All rights reserved.
//

import Foundation

public func +(lhs: StringElement, rhs: StringElement) -> StyledString {
    return StyledString(elements: [lhs, rhs])
}

public func +(var lhs: StyledString, rhs: StringElement) -> StyledString {
    return lhs.append(rhs)
}

public func +(var lhs: StyledString, rhs: [StringElement]) -> StyledString {
    return lhs.append(rhs)
}

public func +=(inout lhs: StyledString, rhs: StringElement) {
    lhs = lhs + rhs
}

public func +=(inout lhs: StyledString, rhs: [StringElement]) {
    lhs = lhs + rhs
}
