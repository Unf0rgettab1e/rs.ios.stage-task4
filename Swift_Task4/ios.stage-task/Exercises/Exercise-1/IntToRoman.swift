import Foundation

public extension Int {
    
    var roman: String? {
        if self < 1 {
            return nil
        }
        var tempInt = self
        var intToRoman = ""
        while tempInt > 0{
            if tempInt >= 1000 {
                intToRoman.append("M")
                tempInt -= 1000
                continue
            }
            if tempInt >= 900 {
                intToRoman.append("CM")
                tempInt -= 900
                continue
            }
            if tempInt >= 500 {
                intToRoman.append("D")
                tempInt -= 500
                continue
            }
            if tempInt >= 400 {
                intToRoman.append("CD")
                tempInt -= 400
                continue
            }
            if tempInt >= 100 {
                intToRoman.append("C")
                tempInt -= 100
                continue
            }
            if tempInt >= 90 {
                intToRoman.append("XC")
                tempInt -= 90
                continue
            }
            if tempInt >= 50 {
                intToRoman.append("L")
                tempInt -= 50
                continue
            }
            if tempInt >= 40 {
                intToRoman.append("XL")
                tempInt -= 40
                continue
            }
            if tempInt >= 10 {
                intToRoman.append("X")
                tempInt -= 10
                continue
            }
            if tempInt >= 9 {
                intToRoman.append("IX")
                tempInt -= 9
                continue
            }
            if tempInt >= 5 {
                intToRoman.append("V")
                tempInt -= 5
                continue
            }
            if tempInt >= 4 {
                intToRoman.append("IV")
                tempInt -= 4
                continue
            }
            if tempInt >= 1 {
                intToRoman.append("I")
                tempInt -= 1
                continue
            }
        }
        return intToRoman
    }
}
