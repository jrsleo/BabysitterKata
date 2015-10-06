import Foundation

public class MakeItRain {
    private func GetPaidStartToBedtime (numberOfHours: Int) -> Int{
        return 12 * numberOfHours;
    }
    
    private func GetPaidBedtimeToMidnight (numberOfHours: Int) -> Int{
        return 8 * numberOfHours;
    }
    
    private func GetPaidMidnightToEnd (numberOfHours: Int) -> Int{
        return 16 * numberOfHours;
    }
    
    public func CalculatePayForOneNight (hoursFromStartToBedtime: Int, hoursFromBedtimeToMidnight: Int, hoursFromMidnightToEnd: Int) -> Int {
        return (GetPaidStartToBedtime(hoursFromStartToBedtime) + GetPaidBedtimeToMidnight(hoursFromBedtimeToMidnight) + GetPaidMidnightToEnd(hoursFromMidnightToEnd));
    }
};