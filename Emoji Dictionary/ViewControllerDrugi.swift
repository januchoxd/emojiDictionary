//
//  ViewControllerDrugi.swift
//  Emoji Dictionary
//
//  Created by janusz jas on 03.02.2017.
//  Copyright © 2017 Janusz Pietkun. All rights reserved.
//

import UIKit

class ViewControllerDrugi: UIViewController {
    
    var emoji = "no emoji"
    //podpinamy label żeby wyswietlac tam emoji
    @IBOutlet weak var Labelek: UILabel!
    @IBOutlet weak var opis: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       Labelek.text = emoji
        
        switch emoji {
        case "😙":
            opis.text = "gwizdacz"
            categoryLabel.text = "Spoko"
            yearLabel.text = "2000"
        case "😃":
            opis.text = "usmiech"
            categoryLabel.text = "Spoko"
            yearLabel.text = "2001"
        case "😁":
            opis.text = "szczery usmiech"
            categoryLabel.text = "Spoko"
            yearLabel.text = "2002"
        case "🤡":
            opis.text = "klaun"
            categoryLabel.text = "dziwne"
            yearLabel.text = "2003"
        case "😙":
            opis.text = "gwizdacz"
            categoryLabel.text = "dziwne"
            yearLabel.text = "2004"
        case "😘":
            opis.text = "buzi"
            categoryLabel.text = "Spoko"
            yearLabel.text = "2005"
        case "😇":
            opis.text = "aniolek"
            categoryLabel.text = "dziwne"
            yearLabel.text = "2006"
        case "😱":
            opis.text = "strach"
            categoryLabel.text = "dziwne"
            yearLabel.text = "2007"
        case "😯":
            opis.text = "zaskoczony"
            categoryLabel.text = "dziwne"
            yearLabel.text = "2008"
        case "🤑":
            opis.text = "dolce"
            categoryLabel.text = "Spoko"
            yearLabel.text = "2009"
        default:
            print("error")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
