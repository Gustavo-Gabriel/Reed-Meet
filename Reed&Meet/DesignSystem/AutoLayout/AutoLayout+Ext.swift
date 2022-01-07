import UIKit

extension UIView {
    var dsl: AutoLayout {
        return AutoLayout(view: self)
    }
}

extension Array where Element == NSLayoutConstraint {
    func activate() {
        NSLayoutConstraint.activate(self)
    }

    func deactivate() {
        NSLayoutConstraint.deactivate(self)
    }
}
