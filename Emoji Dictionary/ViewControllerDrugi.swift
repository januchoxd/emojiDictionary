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

    override func viewDidLoad() {
        super.viewDidLoad()

       Labelek.text = emoji
        if emoji == "😙" {
            opis.text = "gwizdajła"
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
