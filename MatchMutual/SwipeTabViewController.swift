//
//  SwipeTabViewController.swift
//  MatchMutual
//
//  Created by Zhang, Yifan on 7/3/19.
//  Copyright © 2019 Zhang, Yifan. All rights reserved.
//

import UIKit
import Koloda

class SwipeTabViewController: UIViewController {

    @IBOutlet weak var kolodaView: KolodaView!
    
    let images = ["Dr Strange", "Thor", "Iron Man", "Spider"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        kolodaView.layer.cornerRadius = 20
        kolodaView.clipsToBounds = true
        
        kolodaView.dataSource = self
        kolodaView.delegate = self
    }
    
}

extension SwipeTabViewController: KolodaViewDelegate {
    func kolodaDidRunOutOfCards(_ koloda: KolodaView) {
        koloda.reloadData()
    }
    
    func koloda(_ koloda: KolodaView, didSelectCardAt index: Int) {
        let alert = UIAlertController(title: "Congratulation!", message: "Now you're \(images[index])", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true)
    }
}

extension SwipeTabViewController: KolodaViewDataSource {
    
    func kolodaNumberOfCards(_ koloda:KolodaView) -> Int {
        return images.count
    }
    
    func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
        let view = UIImageView(image: UIImage(named: images[index]))
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        return view
    }
}

