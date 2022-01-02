//
//  resultList.swift
//  psychologicalTest
//
//  Created by 蕭鈺蒖 on 2022/1/2.
//

import Foundation
import UIKit

struct resultList{
    let title : String
    let content : [String]
}

// color for buttons and choice
let colors = [
    UIColor(red: 250/255, green: 44/255, blue: 44/255, alpha: 1),
    UIColor(red: 25/255, green: 82/255, blue: 254/255, alpha: 1),
    UIColor(red: 254/255, green: 242/255, blue: 78/255, alpha: 1),
    UIColor(red: 136/255, green: 241/255, blue: 0, alpha: 1),
    UIColor(red: 170/255, green: 115/255, blue: 245/255, alpha: 1),
    UIColor(red: 250/255, green: 166/255, blue: 3/255, alpha: 1),
    UIColor.white
]

func setColorImageView(iv : UIImageView, color : UIColor){
    iv.backgroundColor = color
    iv.clipsToBounds = true
    iv.layer.cornerRadius = iv.bounds.height * 0.5
}
