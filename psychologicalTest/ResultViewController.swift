//
//  ResultViewController.swift
//  psychologicalTest
//
//  Created by 蕭鈺蒖 on 2022/1/2.
//

import UIKit

class ResultViewController: UIViewController {
    
  
    
    var chosenColorsTag : [Int]!

    @IBOutlet var resultColorImageView: [UIImageView]!
    
    @IBOutlet var resultTitleLabel: [UILabel]!
    
    @IBOutlet var resultContentLabel: [UILabel]!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let chosenColorsTag = chosenColorsTag{
            for i in 0...3{
                
                setColorImageView(iv: resultColorImageView[i], color: colors[chosenColorsTag[i]])
                resultTitleLabel[i].sizeToFit()
                resultTitleLabel[i].text = "第\(i+1)種顏色 >> " + result[i].title
                let contentArray :[String] = result[i].content
                resultContentLabel[i].sizeToFit()
                resultContentLabel[i].numberOfLines = 0
                
                resultContentLabel[i].text = contentArray[chosenColorsTag[i]]
            
            }
        }

        
        

        // Do any additional setup after loading the view.
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
