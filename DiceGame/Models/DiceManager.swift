//
//  DiceManager.swift
//  DiceGame
//
//  Created by 심현희 on 2023/11/05.
//

import UIKit

struct DiceManager {
    
   private var diceArray: [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6")]
   
    func getRandomDice() -> UIImage {
        return diceArray.randomElement()!
    }
    
    // 내가 추가한 리팩토링
    func getNthDice(_ index: Int) -> UIImage {
        return diceArray[index]
    }
    
}
