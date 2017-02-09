//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by janusz jas on 03.02.2017.
//  Copyright © 2017 Janusz Pietkun. All rights reserved.
//
/*
 
    Aby po ustawieniu w seque na Show był przycisk Back - dodalismy navigation controller do 1 viewControllera
    ( przy zaznaczonym 1 viewControllerze -> Editor -> Embaded in - > navigation controller
 
 
    przekazywanie emoji miedzy widokami
    tworzenie tabeli
    tworzenie przejscia z przyciskiem back
 */



import UIKit

//aby nie było błedu trzeba dodać 2 funkcje - table view nr of rows i cellfor rowa at
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    //powiązanie tableView z kontrolerem jako outlet
    @IBOutlet weak var tableViewTutej: UITableView!
    
    //tworzymy pusta tablice emojis typu Emoji - cmd + ctr + space - wstawianie emoji
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewTutej.dataSource = self
        tableViewTutej.delegate = self
        
        //tu wypełniamy tablicę emojis funkcją makeEmojiArray
        emojis = makeEmojiArray()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return  ustala ilosc rows
        return emojis.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //w konsoli sobie odpalamy nr rows - od 0 do 9
        print(indexPath.row)
        //tworzymy
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        //dla odpowieniego nr cell/row odpowiedne emoji z tablicy o danym nr
        cell.textLabel?.text = emoji.stringEmoji
    
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emoji = emojis[indexPath.row]
        //  moveSegue - taki ndalaismy identyfier
        performSegue(withIdentifier: "moveSegue", sender: emoji)
        print(emoji)
        
        //usuwanie podświetlania wcześniej wybranek row/cell
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let VCDrugi = segue.destination as! ViewControllerDrugi
        //odwołanie się do zmiennej emoji w klasie ViewController Drugi
        VCDrugi.emoji = sender as! Emoji
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //funckcja po wywołaniu zwraca tablicę typu Emoji
    func  makeEmojiArray() -> [Emoji] {
        
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😙"
        emoji1.definition = "gwizdacz"
        emoji1.category = "ryj"
        emoji1.birthYear = 2000
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😃"
        emoji2.definition = "usmiech"
        emoji2.category = "ryj"
        emoji2.birthYear = 2001
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🤡"
        emoji3.definition = "maska"
        emoji3.category = "ryj"
        emoji3.birthYear = 2002
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😙"
        emoji4.definition = "gwizdacz"
        emoji4.category = "ryj"
        emoji4.birthYear = 2003

        let emoji5 = Emoji()
        emoji5.stringEmoji = "😘"
        emoji5.definition = "buzi"
        emoji5.category = "ryj"
        emoji5.birthYear = 2004
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "😇"
        emoji6.definition = "aniol"
        emoji6.category = "ryj"
        emoji6.birthYear = 2005
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "😱"
        emoji7.definition = "strach"
        emoji7.category = "ryj"
        emoji7.birthYear = 2006
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "😯"
        emoji8.definition = "zdziwienie"
        emoji8.category = "ryj"
        emoji8.birthYear = 2007
        
        let emoji9 = Emoji()
        emoji9.stringEmoji = "🤑"
        emoji9.definition = "jezyk"
        emoji9.category = "ryj"
        emoji9.birthYear = 2008
        
        //zwracamy tablicę obiektów typu Emoji
        return [emoji1, emoji2,emoji3, emoji4,emoji5, emoji6,emoji7, emoji8, emoji9]
    }


}

