//
//  File.swift
//  CodeStarterCamp_Week2
//
//  Created by 조용현 on 2022/07/18.
//

import Foundation

var myLottoNumbers: Array<Int> = [1, 2, 3, 4, 5, 6]

func makeWinningNumbers() -> Array<Int> {
    var lottoNumbersArray: Array<Int> = Array<Int>()
    
    while lottoNumbersArray.count < 6 {
        let lottoNumber = Int.random(in:1...45)
        if lottoNumbersArray.contains(lottoNumber) == false {
            lottoNumbersArray.append(lottoNumber)
        }
    }
    return lottoNumbersArray.sorted()
}

func overlapLottoNumbers(winning: Array<Int>, mine: Array<Int>) -> Array<Int> {
    var sameLottoNumbers: Array<Int> = Array<Int>()
    for i in mine {
        if winning.contains(i) == true {
            sameLottoNumbers.append(i)
        }
    }
    return sameLottoNumbers
}

func printOverlapLottoNumbers(sameLottoNumbers: Array<Int>) {
    if sameLottoNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는", terminator: " ")
        var sameLottoNumbersString = String()
        for stringArray in sameLottoNumbers {
            sameLottoNumbersString += String(stringArray) + ","
        }
        sameLottoNumbersString.removeLast()

        print(sameLottoNumbersString, terminator: " ")
        print("입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

func findOverlapLottoNumbers() {
    let winningLottoNumbers = makeWinningNumbers()
    let overlapNumbers = overlapLottoNumbers(winning: winningLottoNumbers, mine: myLottoNumbers)
    printOverlapLottoNumbers(sameLottoNumbers: overlapNumbers)
    print(winningLottoNumbers.sorted())
}
