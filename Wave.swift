import SwiftUI

struct Wave: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: rect.height * 0.5))

        let width = rect.width
        let height = rect.height

        path.addCurve(
            to: CGPoint(x: width, y: height * 0.5),
            control1: CGPoint(x: width * 0.4, y: height * 0.2),
            control2: CGPoint(x: width * 0.6, y: height * 0.8)
        )

        path.addLine(to: CGPoint(x: width, y: 0))
        path.addLine(to: CGPoint(x: 0, y: 0))
        path.closeSubpath()

        return path
    }
}

