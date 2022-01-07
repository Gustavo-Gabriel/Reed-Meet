import UIKit

extension NSLayoutConstraint {
    static func inset(view: UIView,
                      inSuperView superview: UIView,
                      withInset inset: UIEdgeInsets? = nil) -> [NSLayoutConstraint] {
        
        return [
            .top(firstView: superview, secondView: view, relation: .equal, constant: -(inset?.top ?? 0)),
            .left(firstView: superview, secondView: view, relation: .equal, constant: -(inset?.left ?? 0)),
            .right(firstView: superview, secondView: view, relation: .equal, constant: inset?.right ?? 0),
            .bottom(firstView: superview, secondView: view, relation: .equal, constant: inset?.bottom ?? 0)
        ]
    }

    static func top(firstView: UIView,
                    secondView: UIView,
                    relation: NSLayoutConstraintType = .equal,
                    constant: CGFloat = 0) -> NSLayoutConstraint {

        return NSLayoutConstraint(item: firstView,
                                  attribute: .top,
                                  relatedBy: relation.get(),
                                  toItem: secondView,
                                  attribute: .top,
                                  multiplier: 1,
                                  constant: constant)
    }

    static func left(firstView: UIView,
                    secondView: UIView,
                    relation: NSLayoutConstraintType = .equal,
                    constant: CGFloat = 0) -> NSLayoutConstraint {

        return NSLayoutConstraint(item: firstView,
                                  attribute: .left,
                                  relatedBy: relation.get(),
                                  toItem: secondView,
                                  attribute: .left,
                                  multiplier: 1,
                                  constant: constant)
    }

    static func right(firstView: UIView,
                    secondView: UIView,
                    relation: NSLayoutConstraintType = .equal,
                    constant: CGFloat = 0) -> NSLayoutConstraint {

        return NSLayoutConstraint(item: firstView,
                                  attribute: .right,
                                  relatedBy: relation.get(),
                                  toItem: secondView,
                                  attribute: .right,
                                  multiplier: 1,
                                  constant: constant)
    }

    static func bottom(firstView: UIView,
                    secondView: UIView,
                    relation: NSLayoutConstraintType = .equal,
                    constant: CGFloat = 0) -> NSLayoutConstraint {

        return NSLayoutConstraint(item: firstView,
                                  attribute: .bottom,
                                  relatedBy: relation.get(),
                                  toItem: secondView,
                                  attribute: .bottom,
                                  multiplier: 1,
                                  constant: constant)
    }

    static func baseLine(firstView: UIView,
                    secondView: UIView,
                    relation: NSLayoutConstraintType = .equal,
                    constant: CGFloat = 0) -> NSLayoutConstraint {

        return NSLayoutConstraint(item: firstView,
                                  attribute: .firstBaseline,
                                  relatedBy: relation.get(),
                                  toItem: secondView,
                                  attribute: .firstBaseline,
                                  multiplier: 1,
                                  constant: constant)
    }

    static func over(topItem: UIView,
                    bottomItem: UIView,
                    relation: NSLayoutConstraintType = .equal,
                    constant: CGFloat = 0) -> NSLayoutConstraint {

        return NSLayoutConstraint(item: topItem,
                                  attribute: .bottom,
                                  relatedBy: relation.get(),
                                  toItem: bottomItem,
                                  attribute: .top,
                                  multiplier: 1,
                                  constant: -1 * constant)
    }

    static func aside(left: UIView,
                      right: UIView,
                      relation: NSLayoutConstraintType = .equal,
                      constant: CGFloat = 0) -> NSLayoutConstraint {

        return NSLayoutConstraint(item: left,
                                  attribute: .right,
                                  relatedBy: relation.get(),
                                  toItem: right,
                                  attribute: .left,
                                  multiplier: 1,
                                  constant: -1 * constant)
    }

    static func height(firstView: UIView,
                       secondView: UIView,
                       relation: NSLayoutConstraintType = .equal,
                       constant: CGFloat,
                       multiplier: CGFloat = 1) -> NSLayoutConstraint {

        return NSLayoutConstraint(item: firstView,
                                  attribute: .height,
                                  relatedBy: relation.get(),
                                  toItem: secondView,
                                  attribute: .height,
                                  multiplier: multiplier,
                                  constant: constant)
    }

    static func height(view: UIView,
                       relation: NSLayoutConstraintType = .equal,
                       constant: CGFloat) -> NSLayoutConstraint {

        return NSLayoutConstraint(item: view,
                                  attribute: .height,
                                  relatedBy: relation.get(),
                                  toItem: nil,
                                  attribute: .notAnAttribute,
                                  multiplier: 1,
                                  constant: constant)
    }

    static func width(firstView: UIView,
                       secondView: UIView,
                       relation: NSLayoutConstraintType = .equal,
                       constant: CGFloat,
                       multiplier: CGFloat) -> NSLayoutConstraint {

        return NSLayoutConstraint(item: firstView,
                                  attribute: .width,
                                  relatedBy: relation.get(),
                                  toItem: secondView,
                                  attribute: .width,
                                  multiplier: multiplier,
                                  constant: constant)
    }

    static func width(view: UIView,
                       relation: NSLayoutConstraintType = .equal,
                       constant: CGFloat) -> NSLayoutConstraint {

        return NSLayoutConstraint(item: view,
                                  attribute: .width,
                                  relatedBy: relation.get(),
                                  toItem: nil,
                                  attribute: .notAnAttribute,
                                  multiplier: 1,
                                  constant: constant)
    }

    static func aspectRadio(view: UIView,
                       relation: NSLayoutConstraintType = .equal,
                       constant: CGFloat) -> NSLayoutConstraint {

        return NSLayoutConstraint(item: view,
                                  attribute: .width,
                                  relatedBy: relation.get(),
                                  toItem: view,
                                  attribute: .height,
                                  multiplier: CGFloat(constant),
                                  constant: 0)
    }

    static func centerY(firstView: UIView,
                        secondView: UIView,
                        attribute: NSLayoutConstraint.Attribute = .centerY,
                        relation: NSLayoutConstraintType = .equal,
                        constant: CGFloat = 0) -> NSLayoutConstraint {

        return NSLayoutConstraint(item: firstView,
                                  attribute: .centerY,
                                  relatedBy: relation.get(),
                                  toItem: secondView,
                                  attribute: .centerY,
                                  multiplier: 1,
                                  constant: constant)
    }

    static func centerX(firstView: UIView,
                       secondView: UIView,
                       relation: NSLayoutConstraintType = .equal,
                       constant: CGFloat = 0) -> NSLayoutConstraint {

        return NSLayoutConstraint(item: firstView,
                                  attribute: .centerX,
                                  relatedBy: relation.get(),
                                  toItem: secondView,
                                  attribute: .centerX,
                                  multiplier: 1,
                                  constant: constant)
    }
}
