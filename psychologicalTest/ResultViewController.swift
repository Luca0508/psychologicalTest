//
//  ResultViewController.swift
//  psychologicalTest
//
//  Created by 蕭鈺蒖 on 2022/1/2.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var colorImageViews: [UIImageView]!
    //    var chosenColors :[UIColor] = []
    var chosenColorsTag : [Int] = []

    @IBOutlet var resultColorImageView: [UIImageView]!
    
    @IBOutlet var resultTitleLabel: [UILabel]!
    
    @IBOutlet var resultContentLabel: [UILabel]!
    
    
    let result = [
        resultList(
            title: "測你的隱藏性格",
            content: [
            "你有活力，且創意力非凡；凡事只要下定決心要做，就一定會做到最好！",
            "表面看起來冷漠，但其實內心是一個很溫暖的人。雖然怕生，可是熟起來的話會變得多情；討厭獨處，比較容易感到寂寞",
            "雖然消極，但意志力強，溫暖又冷靜的性格，會在朋友需要時挺身而出",
            "是一個領導力很強的人，凡事都會盡全力完成，理性思維大於感性思維，行動直接又爽快",
            "性格開朗很有個性；如果被某件事吸引就會用盡全力去做，但時常因為變幻無常的性格而無法下定決定",
            "誠實有有責任感，是一個爽快的人。做事喜歡做到完美，一定要達到100分，所以不太喜歡冒險，只做有把握的事",
            "情感較豐沛，必較容易情緒化，性格柔弱敏感，對小小的事物也能十分興"]),
        resultList(
            title: "測你做事失敗的原因",
            content: ["想法過於現實，太過斤斤計較，導致自己的才能和魅力不能充分發揮",
                    "對別人的事太過上心，太想得到別人的認可，導致自己的事沒辦法順利完成",
                    "過於深思熟慮，就算是很小的事情都要考慮很久，浪費掉自己的時間",
                    "事情總是壓線完成！秉持著能拖就拖的心態在做事，缺乏恆心和動力",
                    "心裡很想去做，但是身體跟不上心理的速度，常常力不從心",
                    "雖然有好的想法和意見，但是過於在乎別人的看法，所以不敢提出自己的見解",
                    "太會撒嬌，默默地讓身旁的人討厭，不知不覺樹立很多敵人"]),
        resultList(
            title: "測你現在的狀態",
            content: ["對於任何事都十分積極，且自信心爆棚，感覺做任何事都會成功",
                    "對於任何事都產生不了動力和興趣，正處於較無力的狀態",
                    "就算有困難，也都會想盡辦法以最積極的態度面對，因此會有好結果！",
                    "對任何事都會保持適當的挑戰心，因此會有好結果",
                    "雖然表面上裝作什麼事都沒有，但內心卻因為困難而承受著很大的壓力",
                    "合理和冷靜的性格，令你能好好處理所有事，能適當控制自己的慾望",
                    "受過往失敗經驗影響，令你失去自信，凡事都往消極方面去想"]),
        resultList(
            title: "對你未來有幫助的一句話",
            content: ["向別人都畏懼或不敢做的事情積極挑戰，可以令你的地位提升",
                    "可嘗試在新的範圍發掘自己的潛能，說不定會有意外的收穫",
                    "你有著驚人的適應力，因此到哪都可以發揮自己的長處",
                    "過份執著容易錯失機會，偶爾放手讓自己碰撞一下",
                    "有豐富想像力和創意，如果能和別人聯合起來，會獲得更高的成果",
                    "太過感情用事，未來應多注意如何好好調節自己的心情",
                    "找一個能帶領你的同行者，換取新的挑戰機會"])
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...3{
            
            setColorImageView(iv: colorImageViews[i], color: colors[chosenColorsTag[i]])
            setColorImageView(iv: resultColorImageView[i], color: colors[chosenColorsTag[i]])
            resultTitleLabel[i].text = "第\(i+1)種顏色 >> " + result[i].title
            let contentArray :[String] = result[i].content
            resultContentLabel[i].text = contentArray[chosenColorsTag[i]]
        
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
