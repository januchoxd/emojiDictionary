//
//  ViewControllerDrugi.swift
//  Emoji Dictionary
//
//  Created by janusz jas on 03.02.2017.
//  Copyright © 2017 Janusz Pietkun. All rights reserved.
//

import UIKit

class ViewControllerDrugi: UIViewController {
    
    
    var emoji = Emoji()
    //podpinamy label żeby wyswietlac tam emoji
    @IBOutlet weak var Labelek: UILabel!
    @IBOutlet weak var opis: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //wyswietlamy wszystko w tym widoku 
        Labelek.text = emoji.stringEmoji
        opis.text = emoji.definition
        categoryLabel.text = emoji.category
        yearLabel.text = String(emoji.birthYear)
        
       
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
