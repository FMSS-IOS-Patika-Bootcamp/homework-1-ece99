//
//  ViewController.swift
//  Homework1
//
//  Created by Ece Ayvaz on 11.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        collectionView.delegate = self
        collectionView.dataSource = self
        super.viewDidLoad()
        collectionView.backgroundColor = nil
        collectionView.register(UINib(nibName: "CoinListCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CoinCell")
    }
    
    var coinList = [CoinElement](){
        didSet {
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
        }
    }


    @IBAction func addItem(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        if let controller = storyBoard.instantiateViewController(withIdentifier: "AddItemVC") as? AddingItemViewController {
            controller.itemDelegate = self
            present(controller, animated: true, completion: nil)
        }
        
    }
}

extension ViewController : UICollectionViewDelegate , UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return coinList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CoinCell", for: indexPath) as! CoinListCollectionViewCell
        cell.layer.cornerRadius = 10
        cell.backgroundColor = .white
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 1
        cell.layer.masksToBounds = true
        cell.configure(model: coinList[indexPath.row])
        
        
        return cell
    }
}

extension ViewController: AddItemDelegate {
    func didItemAdd(coinElement: CoinElement) {
        coinList.append(coinElement)
    }
    
}

