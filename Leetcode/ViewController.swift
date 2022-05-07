//
//  ViewController.swift
//  Leetcode
//
//  Created by raviseta on 22/09/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnClick(_ sender: Any) {
        _ = shiftingLetters("abc", [3,5,9])

    }
    
    func shiftingLetters(_ s: String, _ shifts: [Int]) -> String {
        var shift = 0
        
        let str = s
        let arrString = Array(str)
        
        let arrShifts = shifts
        var arrAsciiNumber = Array<Int>()
        
        for i in 0..<arrString.count{
            let tempAscii = (arrString[i].asciiValue!)
            arrAsciiNumber.append(Int(tempAscii))
        }
        
        for i in stride(from: arrShifts.count - 1, to: 0, by: -1) {
            arrAsciiNumber[i] = ((arrAsciiNumber[i] - 97) + (shift+arrShifts[i]) % 26) % 26 + 97
            shift = shift + arrShifts[i]
        }
        
        return ""
    }
    
}

