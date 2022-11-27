import Foundation

func caesarCipher(s: String, k: Int) -> String {
    // Write your code here
    let originalAlphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    let symbols:[Character] = ["-","_","+",".","*","/",",","!",";",":","`","~","@","#","$","%","^","&","(",")","|", "<",">","?","{","}","[","]"]
    
    var alphabetArray:[Character] = []
    var newString = ""

    for letter in originalAlphabet{
        //Create alphabet dictionary
        alphabetArray.append(letter)
    }
    for letter in s{
        if symbols.contains(letter){
            newString.append(letter)
        }
        if let number = Int(String(letter)){
            newString.append(String(number))
        }
        if let n = alphabetArray.firstIndex(of: letter){
            if String(letter) == letter.lowercased(){
                newString.append(alphabetArray[(n + k) % 26])
            }else{
                newString.append(alphabetArray[((n + k) % 26) + 26])
            }
        }
    }
    return newString
}

