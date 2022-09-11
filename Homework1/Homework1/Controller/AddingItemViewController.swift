//
//  AddingItemViewController.swift
//  Homework1
//
//  Created by Ece Ayvaz on 11.09.2022.
//

import UIKit

protocol AddItemDelegate {
    func didItemAdd (coinElement: CoinElement)
}

class AddingItemViewController: UIViewController {
    
    var itemDelegate: AddItemDelegate!
    
    @IBOutlet weak var shortName: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var price: UITextField!
    @IBOutlet weak var rank: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func saveItem(_ sender: Any) {
        
        var coinElement = CoinElement(symbol: nil, shortName: shortName.text, name: name.text, price: price.text, rank: rank.text)
        itemDelegate.didItemAdd(coinElement: coinElement)
        dismiss(animated: true, completion: nil)
    }
}
