//
//  ImageLoader.swift
//  ImageLoader
//
//  Created by Franco Jaramillo on 10/5/17.
//  Copyright © 2017 Franco Jaramillo. All rights reserved.
//

import UIKit

class ImageLoader {
    private static var instance: ImageLoader?
    private var imageView: UIImageView?
    
    private static func getInstance() -> ImageLoader{
        if let currentInstance = self.instance {
            return currentInstance
        } else {
            instance = ImageLoader()
            return instance!
        }
    }
    
    private init() {
        
    }
    
    static func with(iv: UIImageView) -> ImageLoader {
        getInstance().imageView = iv
        return getInstance()
    }
    
    func load(urlString: String) -> ImageLoader {
        loadImageAsync(urlString: urlString)
        return self
    }
    
    /**
     *  Descarga la imagen de url y la setea la UIImageView. La descarga ocurre en
     *  segundo plano para no bloquear el hilo principal
     */
    private func loadImageAsync(urlString: String) {
        let url = URL(string: urlString)
        
        DispatchQueue.global().async {
            let data = try? Data(contentsOf: url!)
            DispatchQueue.main.async {
                self.imageView!.image = UIImage(data: data!)
            }
        }
        
    }
    
}
