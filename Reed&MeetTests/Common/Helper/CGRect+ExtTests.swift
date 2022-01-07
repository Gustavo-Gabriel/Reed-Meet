import Quick
import Nimble

@testable import Reed_Meet
import CoreGraphics

final class CGRectExtTests: QuickSpec {
    override func spec() {
        var iphoneSize: CGRect!

        beforeEach {
            iphoneSize = CGRect()
        }

        describe("iphone5") {
            it("returns width: 320, height: 568") {
                iphoneSize = CGRect(x: 0, y: 0, width: 320, height: 568)
                expect(CGRect.iPhone5).to(equal(iphoneSize))
            }
        }

        describe("iPhone5Landscape") {
            it("returns width: 568, height: 320") {
                iphoneSize = CGRect(x: 0, y: 0, width: 568, height: 320)
                expect(CGRect.iPhone5Landscape).to(equal(iphoneSize))
            }
        }

        describe("iPhone8") {
            it("returns width: 375, height: 667") {
                iphoneSize = CGRect(x: 0, y: 0, width: 375, height: 667)
                expect(CGRect.iPhone8).to(equal(iphoneSize))
            }
        }

        describe("iPhone8Plus") {
            it("returns width: 414, height: 736") {
                iphoneSize = CGRect(x: 0, y: 0, width: 414, height: 736)
                expect(CGRect.iPhone8Plus).to(equal(iphoneSize))
            }
        }

        describe("iPhoneX") {
            it("returns width: 375, height: 812") {
                iphoneSize = CGRect(x: 0, y: 0, width: 375, height: 812)
                expect(CGRect.iPhoneX).to(equal(iphoneSize))
            }
        }

        describe("iPhoneXSMax") {
            it("returns width: 414, height: 896") {
                iphoneSize = CGRect(x: 0, y: 0, width: 414, height: 896)
                expect(CGRect.iPhoneXSMax).to(equal(iphoneSize))
            }
        }
    }
}
