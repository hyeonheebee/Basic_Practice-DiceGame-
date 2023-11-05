//
//  ViewController.swift
//  DiceGame
//
//  Created by 심현희 on 2023/09/15.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    
    var diceManager = DiceManager()
    
    // 가장 먼저 자동으로 실행되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        // 초기이미지 변경해주기
        firstImageView.image = diceManager.getNthDice(1)
        secondImageView.image = diceManager.getNthDice(2)
    }

    
    
    
    @IBAction func rollButtonTapped(_ sender: UIButton) {
        // 첫번째이미지뷰의 이미지를 랜덤변경
        // 두번째이미지뷰의 이미지를 랜덤변경
        firstImageView.image = diceManager.getRandomDice()
           secondImageView.image = diceManager.getRandomDice()
        // firstImageView.image = diceArray[Int.random(in: 0...5)]
        // secondImageView.image = diceArray[Int.random(in: 0...5)]
    }
    
    
    

}

