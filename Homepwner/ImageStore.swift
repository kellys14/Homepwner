//
//  ImageStore.swift
//  Homepwner
//
//  Created by Sean Melnick Kelly on 3/29/17.
//  Copyright © 2017 Sean Melnick Kelly. All rights reserved.
//

import UIKit

class ImageStore: NSObject {
    
    let cache = NSCache<NSString, UIImage>()
    // let cache = NSCache()
    
    func setImage(_ image: UIImage, forKey key: String) {
        cache.setObject(image, forKey: key as NSString)
    }
    
    func image(forKey key: String) -> UIImage? {
        return cache.object(forKey: key as NSString)
    }
    
    func deleteImage(forKey key: String) {
        cache.removeObject(forKey: key as NSString)
    }
}
