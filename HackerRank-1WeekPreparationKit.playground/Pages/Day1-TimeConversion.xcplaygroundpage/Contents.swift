import Foundation

func timeConversion(s: String) -> String {
    // Write your code here
    let hourString = Int(s.dropLast(8))!
    let lPart = s.dropFirst(2)
    let mPart = lPart.dropLast(2)

    if hourString == 12 && lPart.contains("A"){
        return "00\(mPart)"
    }else if hourString == 12 && lPart.contains("P"){
        return "12\(mPart)"
    }else if hourString < 10 && lPart.contains("A"){
        // If hour is less than 10 result can be 6:45:30 which is unwanted
        return "0\(hourString)\(mPart)"
    }else if hourString >= 10 && lPart.contains("A"){
        return "\(hourString)\(mPart)"
    }else{
        return "\(hourString + 12)\(mPart)"
    }
}
