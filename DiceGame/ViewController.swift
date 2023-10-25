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
    
    var diceArray: [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6")]
    
    // 가장 먼저 자동으로 실행되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        // 초기이미지 변경해주기
        firstImageView.image = diceArray[1]
        secondImageView.image = diceArray[2]
    }

    
    
    
    @IBAction func rollButtonTapped(_ sender: UIButton) {
        // 첫번째이미지뷰의 이미지를 랜덤변경
        // 두번째이미지뷰의 이미지를 랜덤변경
           firstImageView.image = diceArray.randomElement()
           secondImageView.image = diceArray.randomElement()
        // firstImageView.image = diceArray[Int.random(in: 0...5)]
        // secondImageView.image = diceArray[Int.random(in: 0...5)]
    }
    
    
    

}

