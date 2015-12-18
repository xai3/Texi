# Texi

[![Pod Version](http://img.shields.io/cocoapods/v/Texi.svg?style=flat)](http://cocoadocs.org/docsets/Texi/)
[![Pod Platform](http://img.shields.io/cocoapods/p/Texi.svg?style=flat)](http://cocoadocs.org/docsets/Texi/)
[![Pod License](http://img.shields.io/cocoapods/l/Texi.svg?style=flat)](http://opensource.org/licenses/MIT)

Texi is a library that you can easily build NSAttributedString. Written in Swift.

## Example

##### Bold text

``` swift
let bold = Style(color: UIColor.blackColor(), font: UIFont.boldSystemFontOfSize(17))
var styledString = "Bold text ".stylize(bold) + "Plain text"
label.attributedText = styledString.attributedString
```

##### Colorful text

``` swift
let red = Style(color: UIColor.redColor(), font: UIFont.systemFontOfSize(17))
let green = Style(color: UIColor.greenColor(), font: UIFont.systemFontOfSize(17))
let blue = Style(color: UIColor.blueColor(), font: UIFont.systemFontOfSize(17))
var styledString = "Red ".stylize(red) + "Green ".stylize(green) + "Blue ".stylize(blue)
label.attributedText = styledString.attributedString
```

## License

Shoyu is released under the MIT license. See LICENSE for details.
