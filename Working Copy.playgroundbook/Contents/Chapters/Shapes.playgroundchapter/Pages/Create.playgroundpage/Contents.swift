//#-code-completion(module, hide, Swift)
//#-code-completion(identifier, hide, _setup())
//#-code-completion(identifier, hide, AbstractDrawable)
//#-code-completion(identifier, hide, _ColorLiteralType)
//#-hidden-code
_setup()
//#-end-hidden-code
//#-editable-code Tap to enter code
// 1. Create a circle
let circle = Circle(radius: 3)
circle.center.y += 28

// 2. Create a rectangle
let rectangle = Rectangle(width: 10, height: 5, cornerRadius: 0.75)
rectangle.color = .purple
rectangle.center.y += 18

// 3. Create a line
let line = Line(start: Point(x: -10, y: 9), end: Point(x: 10, y: 9), thickness: 0.5)
line.center.y -= 2
line.rotation = 170 * (Double.pi / 180)
line.color = .yellow

// 4. Create text
let text = Text(string: "Hello world!", fontSize: 32.0, fontName: "Futura", color: .red)
text.center.y -= 2

// 5. Create an image
let image = Image(name: "SwiftBird", tint: .green)
image.size.width *= 0.5
image.size.height *= 0.5
image.center.y -= 11

// 6. Create a pattern with rectangles
let numRectangles = 4
var xOffset = Double((numRectangles/2) * (-1))
var yOffset = -26.0
let saturationEnd = 0.911
let saturationStart = 0.1
let saturationStride = (saturationEnd - saturationStart)/Double(numRectangles)

for i in 0...numRectangles {
    
    let rectangle = Rectangle(width: 10, height: 5, cornerRadius: 0.75)
    
    // set the color.
    let saturation = saturationEnd - (Double(numRectangles - i) * saturationStride)
    rectangle.color = Color(hue: 0.079, saturation: saturation, brightness: 0.934)
    
    // calculate the offset.
    rectangle.center = Point(x: xOffset, y: yOffset)
    xOffset += 1
    yOffset += 1
}

//#-end-editable-code
