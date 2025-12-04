//
//  GSKButtonComponentUnitTest.swift
//  GSKComponentLibrary
//
//  Created by Hari Krishna N on 04/12/25.
//

import XCTest
import SwiftUI

@testable import GSKComponentLibrary
@available(iOS 15.0, *)
final class GSKButtonComponentUnitTest: XCTestCase {

    @MainActor func testPrimaryButtonAction() {
        let expectation = XCTestExpectation(description: "Primary button action")
        let button = BaseButtonVariant(title: "Test Button", variant: .primary, size: .lg, isLoading: false, enabled: true, fullWidth: false, isTextVisible: true, href: nil, isIconVisible: false, iconLeading: false, isLineVisible: true) {
            expectation.fulfill()
        }
        button.onClick()
        wait(for: [expectation], timeout: 1)
    }
    
    @MainActor func testButtonSizeValues() {
        let buttonSizeLG = BaseButtonVariant(title: "Test Button", variant: .primary, size: .lg, isLoading: true, enabled: true, fullWidth: false, isTextVisible: false, href: nil, isIconVisible: false, iconLeading: false, isLineVisible: true) {}
        XCTAssertEqual(buttonSizeLG.size.height, 48)
        XCTAssertEqual(buttonSizeLG.size.horizontalPadding, 20)
        XCTAssertEqual(ButtonSize.md.height,  40)
        XCTAssertEqual(ButtonSize.sm.height,  32)
        XCTAssertEqual(ButtonSize.xl.height,  56)
    }
    
    func testPrimaryVariantColors() {
        let variants = ButtonVariant.primary
        XCTAssertEqual(variants.background, Color(rgbaString: DesignTokens.Colors.Background.bg_brand_section)!)
        XCTAssertEqual(variants.foreground, Color.white)
    }
    /*
    func testButtonLoadingState() {
        let view = BaseButtonVariant(title: "Test Button", variant: .primary, size: .lg, isLoading: true, enabled: true, fullWidth: false, showTextWhileLoading: false, href: nil, isIconWithText: false, iconLeading: false, isLineVisible: true) {}
        let mirror = Mirror(reflecting: view.body)
        debugPrint("mirror: \(mirror.children))")
        let containProgressView = mirror.children.contains { child in
            String(describing: child.value).contains("ProgressView")
        }
        debugPrint("containProgressView: \(containProgressView)")
        XCTAssertTrue(containProgressView, "Button should show ProgressView when loading")
        
    }
    */

}
