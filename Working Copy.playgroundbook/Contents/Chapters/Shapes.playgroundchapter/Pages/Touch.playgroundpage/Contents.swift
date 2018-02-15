//#-code-completion(module, hide, Swift)
//#-code-completion(identifier, hide, _setup())
//#-code-completion(identifier, hide, AbstractDrawable)
//#-code-completion(identifier, hide, _ColorLiteralType)
//#-hidden-code
_setup()
//#-end-hidden-code
//#-editable-code Tap to enter code
// create a circle and make it draggable.
let circle = Circle(radius: 7.0)
circle.color = Color.purple
circle.draggable = true

// when the circle is touched, make it darker and give it a shadow.
circle.onTouchDown {
    circle.color = circle.color.darker()
    circle.dropShadow = Shadow()
}

// when the touch ends on the circle, change its color to a random color.
circle.onTouchUp {
    circle.color = Color.random()
    circle.dropShadow = nil
}

// jump the circle to the point on the canvas that was touched.
Canvas.shared.onTouchUp {
    circle.center = Canvas.shared.currentTouchPoints.first!
    circle.dropShadow = Shadow()
}

//#-end-editable-code
