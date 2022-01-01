//
//  QuestionViewController.swift
//  psychologicalTest
//
//  Created by 蕭鈺蒖 on 2021/12/31.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet var colorButton: [UIButton]!
    
    @IBOutlet var colorImageView: [UIImageView]!
    
    var numOfChoice = 1
    let colors = [
        UIColor(red: 250/255, green: 44/255, blue: 44/255, alpha: 1),
        UIColor(red: 25/255, green: 82/255, blue: 254/255, alpha: 1),
        UIColor(red: 254/255, green: 242/255, blue: 78/255, alpha: 1),
        UIColor(red: 136/255, green: 241/255, blue: 0, alpha: 1),
        UIColor(red: 170/255, green: 115/255, blue: 245/255, alpha: 1),
        UIColor(red: 250/255, green: 166/255, blue: 3/255, alpha: 1),
        UIColor.white
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = "第\(numOfChoice)個喜歡的顏色"
        
        for i in 0...6{
            colorButton[i].backgroundColor = colors[i]
            colorButton[i].clipsToBounds = true
            colorButton[i].layer.cornerRadius = 10
        }

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func pressColorButton(_ sender: UIButton) {
        sender.isOpaque = true
        sender.alpha = 0
        
//        sender.isHidden = true
        
        
        numOfChoice += 1
        
        if numOfChoice >= 5{
            for b in colorButton{
                b.alpha = 1
            }
            numOfChoice = 0
        }else{
            questionLabel.text = "第\(numOfChoice)個喜歡的顏色"
            
            let chosenColorImage = colorImageView[numOfChoice - 2]
            chosenColorImage.clipsToBounds = true
            chosenColorImage.layer.cornerRadius = chosenColorImage.bounds.width * 0.5
            chosenColorImage.backgroundColor = sender.backgroundColor
            
            
        }
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
