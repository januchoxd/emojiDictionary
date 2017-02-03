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
    // cmd + ctr + space - wstawianie emoji
    var emojis = ["😙","😃","😁","🤡","😙","😘","😇","😱","😯","🤑"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //pierwsza zmiana przez sourceTree
        
        //
        tableViewTutej.dataSource = self
        tableViewTutej.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 10 ustala ilosc rows
        return emojis.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //w konsoli sobie odpalamy nr rows - od 0 do 9
        print(indexPath.row)
        //tworzymy
        let cell = UITableViewCell()
        
        //dla odpowieniego nr cell/row odpowiedne emoji z tablicy o danym nr
        cell.textLabel?.text = emojis[indexPath.row]
    
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
        VCDrugi.emoji = sender as! String
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

