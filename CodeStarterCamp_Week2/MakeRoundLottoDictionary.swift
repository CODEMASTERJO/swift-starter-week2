//
//  File.swift
//  CodeStarterCamp_Week2
//
//  Created by 조용현 on 2022/07/21.
//

import Foundation

func makeRoundLottoDictionary(round: Int) -> [String: Array<Int>] {
    var lottoDictionary = [String: Array<Int>]()
    for i in 0...round{
        lottoDictionary.updateValue(makeWinningNumbers(), forKey: "\(i + 1)회차")
    }
    return lottoDictionary
}

func printRoundLottoNumbers(roundLottoNumbers: [String: Array<Int>], roundNumber: Int) {
    if let result = roundLottoNumbers["\(roundNumber)회차"] {
        print("\(roundNumber)회차의 로또 당첨 번호는", terminator: " ")
        var resultString = String()
        for stringArray in result {
            resultString += String(stringArray) + ", "
        }
        resultString.removeLast()
        resultString.removeLast()
        print("\(resultString) 입니다.")
    } else {
        print("해당 차수에 로또번호는 생성되지 않았습니다.")
    }
}

func findRoundLottoDictionary(round: Int) {
    printRoundLottoNumbers(roundLottoNumbers: roundLottoNumbers, roundNumber: round)
}
