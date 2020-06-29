//
//  TestPracticeUITests.swift
//  TestPracticeUITests
//
//  Created by Yuki Shinohara on 2020/06/29.
//  Copyright © 2020 Yuki Shinohara. All rights reserved.
//

import XCTest

class TestPracticeUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
//    1. funcのブロックを作る ※testで関数名を始めること
//    2. 左下の録画ボタンを押す
//    3. 一つ一つ動かす。それがfuncの中に順番に記述される
//    4. 確認したいところでXCTAssert○○を記述し、確認したいtestの横のひしがたボタンでテスト実行
    
    func testExample() throws {
        
        
        let app = XCUIApplication()
        
        app.activate() //アプリ起動
        
        XCTAssertEqual(app.tables.count, 1)
        XCTAssertEqual(app.buttons.count, 1) //アプリ起動後のパーツの数
        
        let table = app.tables.element(boundBy: 0)
        XCTAssertEqual(table.cells.count, 0) //tablecellの数(ボタン押す前)
        
        app/*@START_MENU_TOKEN@*/.staticTexts["Button"]/*[[".buttons[\"Button\"].staticTexts[\"Button\"]",".staticTexts[\"Button\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["No. 6"]/*[[".cells.staticTexts[\"No. 6\"]",".staticTexts[\"No. 6\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp() //スワイプしたりボタン押したり
        
        XCTAssertEqual(table.cells.count, 10) //tablecellの数(ボタン押したりスワイプした後)
        
        // UI tests must launch the application that they test.

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

//    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
    
    
}
