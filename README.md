# Texi

Texi is a library that you can easily build NSAttributedString. Written in Swift.

### Example

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
