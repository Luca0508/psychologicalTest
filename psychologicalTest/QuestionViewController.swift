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
    
//    var chosenColors:[UIColor] = []
    var chosenColorsTag : [Int] = []
    
    var numOfChoice = 1
//    let colors = [
//        UIColor(red: 250/255, green: 44/255, blue: 44/255, alpha: 1),
//        UIColor(red: 25/255, green: 82/255, blue: 254/255, alpha: 1),
//        UIColor(red: 254/255, green: 242/255, blue: 78/255, alpha: 1),
//        UIColor(red: 136/255, green: 241/255, blue: 0, alpha: 1),
//        UIColor(red: 170/255, green: 115/255, blue: 245/255, alpha: 1),
//        UIColor(red: 250/255, green: 166/255, blue: 3/255, alpha: 1),
//        UIColor.white
//    ]
    
    
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
    
    @IBSegueAction func showResultView(_ coder: NSCoder) -> ResultViewController? {
        let controller = ResultViewController(coder: coder)
        controller?.chosenColorsTag = chosenColorsTag
        return controller
    }
    
    @IBAction func pressColorButton(_ sender: UIButton) {
        sender.isOpaque = true
        sender.alpha = 0
        
//        sender.isHidden = true
        
    
        setColorImageView(iv: colorImageView[numOfChoice - 1], color: sender.backgroundColor!)
        
//        chosenColors.append(chosenColorImage.backgroundColor!)
        chosenColorsTag.append(sender.tag)
        
        
        if numOfChoice >= 4{
            for b in colorButton{
                b.alpha = 1
            }
            numOfChoice = 1
            
            performSegue(withIdentifier: "showResultSegue", sender: chosenColorsTag)
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
