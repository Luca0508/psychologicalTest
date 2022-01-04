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
    
    var chosenColorsTag : [Int] = []
    
    var numOfChoice = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = "第\(numOfChoice)個喜歡的顏色"
        
        for i in 0...6{
            colorButton[i].backgroundColor = colors[i]
            colorButton[i].clipsToBounds = true
            colorButton[i].layer.cornerRadius = 10
        }
    }
    

    @IBAction func pressTryAgainButton(_ sender: UIButton) {

        for cb in colorButton{
            cb.alpha = 1
        }

        for iv in colorImageView{
            iv.alpha = 0
        }

        chosenColorsTag = []
        numOfChoice = 1
        questionLabel.text = "第\(numOfChoice)個喜歡的顏色"

    }
    
    @IBSegueAction func showResultView(_ coder: NSCoder) -> ResultViewController? {
        let controller =  ResultViewController(coder: coder)
        controller?.chosenColorsTag = chosenColorsTag
        return controller
    }
    
    
   
    
    @IBAction func pressColorButton(_ sender: UIButton) {
        sender.isOpaque = true
        sender.alpha = 0
   
        setColorImageView(iv: colorImageView[numOfChoice - 1], color: sender.backgroundColor!)
        
        chosenColorsTag.append(sender.tag)
        
        
        if numOfChoice >= 4{
            for b in colorButton{
                b.alpha = 1
            }
            numOfChoice = 1
            performSegue(withIdentifier: "showResultSegue", sender: nil)
        }else{
            numOfChoice += 1
            questionLabel.text = "第\(numOfChoice)個喜歡的顏色"
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
