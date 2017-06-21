//
//  InfoDownloader.swift
//  StarWarsAPI
//
//  Created by Cori Mims on 6/20/17.
//  Copyright © 2017 Cori Mims. All rights reserved.
//

import Foundation
import Alamofire

class InfoDownloader {
    
    func getInformation(url: String, completion: @escaping completionHandler){
        Alamofire.request(url).responseJSON { response in
            if let json = response.result.value as? [String : AnyObject] {
                completion(json)
            }
        }
        
    }
}
