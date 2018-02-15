//#-code-completion(module, hide, Swift)
//#-code-completion(identifier, hide, _setup())
//#-code-completion(identifier, hide, AbstractDrawable)
//#-code-completion(identifier, hide, _ColorLiteralType)
//#-hidden-code
_setup()
//#-end-hidden-code
//#-editable-code Tap to enter code
// create a line.
let line = Line(start: Point(x: -10, y: 0), end: Point(x: 10, y: 0))
line.color = .blue
line.center.y += 6

// create a Text object that, when tapped, will kick off the clockwise rotation animation.
let rotateClockwiseText = Text(string: "Rotate Line Clockwise", fontSize: 21.0)
rotateClockwiseText.color = .blue
rotateClockwiseText.center.y -= 7

// create a Text object that, when tapped, will kick off the counter-clockwise rotation animation.
let rotateCounterClockwiseText = Text(string: "Rotate Line Counter Clockwise", fontSize: 21.0)
rotateCounterClockwiseText.color = .blue
rotateCounterClockwiseText.center.y -= 12

// roate the line clockwise with animation when the "Rotate Line Clockwise" text is tapped.
rotateClockwiseText.onTouchUp {
    animate {
        line.rotation += Double.pi / 4
    }
}

// roate the line counter clockwise with animation when the "Rotate Line Counter Clockwise" text is tapped.
rotateCounterClockwiseText.onTouchUp {
    animate {
        line.rotation -= Double.pi / 4
    }
}

//#-end-editable-code
