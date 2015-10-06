import XCTest

class BabysitterTest: XCTestCase {
    let makeitrain = MakeItRain();

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testWhenBabysitterWorksStartToBedtimeThenTheyGetPaidTwelvePerHour() {
        XCTAssertEqual(12, makeitrain.CalculatePayForOneNight(1,hoursFromBedtimeToMidnight: 0,hoursFromMidnightToEnd: 0))
        XCTAssertEqual(24, makeitrain.CalculatePayForOneNight(2,hoursFromBedtimeToMidnight: 0,hoursFromMidnightToEnd: 0))
    }
    
    func testWhenBabysitterWorksBedtimeToMidnightThenTheyGetPaidEightPerhour() {
        XCTAssertEqual(8, makeitrain.CalculatePayForOneNight(0,hoursFromBedtimeToMidnight: 1,hoursFromMidnightToEnd: 0))
        XCTAssertEqual(16, makeitrain.CalculatePayForOneNight(0,hoursFromBedtimeToMidnight: 2,hoursFromMidnightToEnd: 0))
    }
    
    func testWhenBabysitterWorksMidnightToEndThenTheyGetPaidSixteenPerHour() {
        XCTAssertEqual(16, makeitrain.CalculatePayForOneNight(0,hoursFromBedtimeToMidnight: 0,hoursFromMidnightToEnd: 1))
        XCTAssertEqual(32, makeitrain.CalculatePayForOneNight(0,hoursFromBedtimeToMidnight: 0,hoursFromMidnightToEnd: 2))
    }
    
    func testWhenBabysitterWorksStartToMidnightThenTheRateFromDaytimeIsAddedToNightTimeRate() {
        XCTAssertEqual(40, makeitrain.CalculatePayForOneNight(2,hoursFromBedtimeToMidnight: 2,hoursFromMidnightToEnd: 0))
    }
    
    func testWhenBabysitterWorksBedtimeToEndThenTheRateFromNightTimeIsAddedToEarlyMorningRate() {
        XCTAssertEqual(48, makeitrain.CalculatePayForOneNight(0,hoursFromBedtimeToMidnight: 2,hoursFromMidnightToEnd: 2))
    }
    
    func testWhenBabysitterWorksStartToEndThenTheRateIsAddedFromDayTimeAndNightTimeAndEarlyMorningToCalculateFinalPay() {
        XCTAssertEqual(72, makeitrain.CalculatePayForOneNight(2,hoursFromBedtimeToMidnight: 2,hoursFromMidnightToEnd: 2))
    }
/*
    Notes:
    
    
    Background
    ----------
    This kata simulates a babysitter working and getting paid for one night.  The rules are pretty straight forward:
    
    The babysitter
    - starts no earlier than 5:00PM
    - leaves no later than 4:00AM
    - gets paid $12/hour from start-time to bedtime
    - gets paid $8/hour from bedtime to midnight
    - gets paid $16/hour from midnight to end of job
    - gets paid for full hours (no fractional hours)
    
    
    Feature:
    As a babysitter
    In order to get paid for 1 night of work
    I want to calculate my nightly charge
    */
}
