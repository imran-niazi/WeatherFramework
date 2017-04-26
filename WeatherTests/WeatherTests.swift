//
//  WeatherTests.swift
//  WeatherTests
//
//  Created by admin on 3/16/17.
//  Copyright © 2017 ImranNiazi. All rights reserved.
//

import XCTest
@testable import Weather

class WeatherTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSuccessfulWeatherRequest() {
        let expect = expectation(description: "Search Successful")
        let location = "Dallas"
        NetworkManager.sharedInstance.requestWeatherInfo(withLocation: location, completion: { (weatherData,errorString) in
            
            XCTAssertNotNil(weatherData)
            expect.fulfill()
        })
        
        waitForExpectations(timeout: 10) { (error) in
            XCTAssertNil(error, "error")
        }
        
    }
    
    func testUnsuccessfulWeatherRequest() {
        
        let expect = expectation(description: "Search Error")
        let location = "zx"
        NetworkManager.sharedInstance.requestWeatherInfo(withLocation: location, completion: { (weatherData,errorString) in
            
            XCTAssertNotNil(errorString)
            expect.fulfill()
        })
        
        waitForExpectations(timeout: 10) { (error) in
            XCTAssertNil(error, "error")
        }
        
    }
    
}
