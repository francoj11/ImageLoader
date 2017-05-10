//
//  ViewController.swift
//  ImageLoader
//
//  Created by Franco Jaramillo on 9/5/17.
//  Copyright © 2017 Franco Jaramillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let linkURL = "http://www.belatrixsf.com/img/Belatrix.png"
    
    @IBOutlet weak var mImageView: UIImageView!
    
    @IBAction func dummyButtonClick(_ sender: Any) {
        //ImageLoader.with(iv: mImageView).
        ImageLoader.with(iv: mImageView).load(urlString: linkURL)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mImageView.backgroundColor = UIColor.red
                
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

