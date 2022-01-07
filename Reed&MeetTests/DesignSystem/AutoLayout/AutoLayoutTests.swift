import Quick
import Nimble
import Nimble_Snapshots

@testable import Reed_Meet

final class AutoLayoutTests: QuickSpec {
    override func spec() {
        var contextView: UIView!
        var firstView: UIView!
        var secondView: UIView!

        beforeEach {
            contextView = UIView()
            contextView.backgroundColor = .white

            firstView = UIView()
            firstView.backgroundColor = .red

            secondView = UIView()
            secondView.backgroundColor = .blue

            contextView.addSubview(firstView)
            contextView.addSubview(secondView)

            contextView.dsl.applyConstraint {
                $0.height(568)
                $0.width(320)
            }
        }

        describe("#edges") {
            it("creates valid view hierarchy snapshot") {
                firstView.dsl.applyConstraint {
                    $0.edges(in: contextView, offSet: 32)
                }

                expect(contextView).to(haveValidSnapshot())
            }
        }

        describe("#top") {
            it("creates valid view hierarchy snapshot") {
                firstView.addSubview(secondView)

                firstView.dsl.applyConstraint {
                    $0.size(200)
                    $0.center(in: contextView)
                }

                secondView.dsl.applyConstraint {
                    $0.size(100)
                    $0.top(alignedWith: firstView, offSet: 32)
                }

                expect(contextView).to(haveValidSnapshot())
            }
        }

        describe("#left alignedWith") {
            it("creates valid view hierarchy snapshot") {
                firstView.addSubview(secondView)

                firstView.dsl.applyConstraint {
                    $0.size(200)
                    $0.center(in: contextView)
                }

                secondView.dsl.applyConstraint {
                    $0.size(100)
                    $0.left(alignedWith: firstView, offSet: 32)
                }

                expect(contextView).to(haveValidSnapshot())
            }
        }
        
        describe("#left of") {
            it("creates valid view hierarchy snapshot") {
                firstView.addSubview(secondView)

                firstView.dsl.applyConstraint {
                    $0.size(200)
                    $0.center(in: contextView)
                }

                secondView.dsl.applyConstraint {
                    $0.size(100)
                    $0.left(of: firstView, offSet: 8)
                }

                expect(contextView).to(haveValidSnapshot())
            }
        }

        describe("#right alignedWith") {
            it("creates valid view hierarchy snapshot") {
                firstView.addSubview(secondView)

                firstView.dsl.applyConstraint {
                    $0.size(200)
                    $0.center(in: contextView)
                }

                secondView.dsl.applyConstraint {
                    $0.size(100)
                    $0.right(alignedWith: firstView, offSet: 32)
                }

                expect(contextView).to(haveValidSnapshot())
            }
        }

        describe("#right of") {
            it("creates valid view hierarchy snapshot") {
                firstView.addSubview(secondView)

                firstView.dsl.applyConstraint {
                    $0.size(200)
                    $0.center(in: contextView)
                }

                secondView.dsl.applyConstraint {
                    $0.size(100)
                    $0.right(of: firstView, offSet: 8)
                }

                expect(contextView).to(haveValidSnapshot())
            }
        }

        describe("#bottom") {
            it("creates valid view hierarchy snapshot") {
                firstView.addSubview(secondView)

                firstView.dsl.applyConstraint {
                    $0.size(200)
                    $0.center(in: contextView)
                }

                secondView.dsl.applyConstraint {
                    $0.size(100)
                    $0.bottom(alignedWith: firstView, offSet: 32)
                }

                expect(contextView).to(haveValidSnapshot())
            }
        }

        describe("#baseline") {
            it("creates valid view hierarchy snapshot") {
                firstView.dsl.applyConstraint {
                    $0.size(200)
                    $0.baseLine(alignedWith: firstView)
                }

                expect(contextView).to(haveValidSnapshot())
            }
        }

        describe("#under") {
            it("creates valid view hierarchy snapshot") {
                firstView.dsl.applyConstraint {
                    $0.size(200)
                    $0.center(in: contextView)
                }

                secondView.dsl.applyConstraint {
                    $0.size(100)
                    $0.under(view: firstView, offSet: 32)
                }

                expect(contextView).to(haveValidSnapshot())
            }
        }

        describe("#above") {
            it("creates valid view hierarchy snapshot") {
                firstView.dsl.applyConstraint {
                    $0.size(200)
                    $0.center(in: contextView)
                }
    
                secondView.dsl.applyConstraint {
                    $0.size(100)
                    $0.above(view: firstView, offSet: 32)
                }

                expect(contextView).to(haveValidSnapshot())
            }
        }

        describe("#center") {
            it("creates valid view hierarchy snapshot") {
                firstView.addSubview(secondView)

                firstView.dsl.applyConstraint {
                    $0.size(200)
                    $0.center(in: contextView)
                }

                secondView.dsl.applyConstraint {
                    $0.size(100)
                    $0.center(in: firstView)
                }

                expect(contextView).to(haveValidSnapshot())
            }
        }
    }
}
