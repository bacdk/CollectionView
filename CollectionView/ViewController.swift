//
//  ViewController.swift
//  CollectionView
//
//  Created by Cntt20 on 4/26/17.
//  Copyright © 2017 Cntt20. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    //
    @IBOutlet weak var collectionView: UICollectionView!
    //
    var images = ["aperture", "apple-pay", "apple-tv", "apple-watch", "apple-wireless-keyboard", "aperture", "apple-pay", "apple-tv", "apple-watch", "apple-wireless-keyboard", "aperture", "apple-pay", "apple-tv", "apple-watch", "apple-wireless-keyboard", "aperture", "apple-pay", "apple-tv", "apple-watch", "apple-wireless-keyboard"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    //
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionVewCell", for: indexPath) as! MyCollectionViewCell
        // set image
        cell.myImageCell.image = UIImage(named: images[indexPath.row])
        return cell
    }
    //


}

