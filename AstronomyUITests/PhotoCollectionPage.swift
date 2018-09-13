//
//  PhotoCollectionPage.swift
//  AstronomyUITests
//
//  Created by Lisa Sampson on 9/13/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest

struct PhotoCollectionPage: TestPage {
    var testCase: XCTestCase
    
    // MARK: - Elements
    
    var previousSolButton: XCUIElement {
        return app.buttons["PhotosCollectionViewController.PreviousSolButton"]
    }
    
    var nextSolButton: XCUIElement {
        return app.buttons["PhotosCollectionViewController.NextSolButton"]
    }
    
    var title: String {
        return app.navigationBars.element(boundBy: 0).title
    }
    
    func collectionCellImage(at index: Int) -> XCUIElement {
        return app.collectionViews.cells.element(boundBy: index)
    }
    
    // MARK: - Actions
    
    @discardableResult func tapOnPreviousSol(file: String = #file, line: UInt = #line) -> PhotoCollectionPage {
        testCase.expect(exists: previousSolButton, file: file, line: line)
        previousSolButton.tap()
        return self
    }
    
    @discardableResult func tapOnNextSol(file: String = #file, line: UInt = #line) -> PhotoCollectionPage {
        testCase.expect(exists: nextSolButton, file: file, line: line)
        nextSolButton.tap()
        return self
    }
    
    @discardableResult func tapOnCollectionCell(at index: Int, file: String = #file, line: UInt = #line) -> PhotoCollectionPage {
        let cell = collectionCellImage(at: index)
        testCase.expect(exists: cell, file: file, line: line)
        cell.tap()
        return self
    }
    
    // MARK: - Verifications
    
    
    
}
