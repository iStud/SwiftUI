//
//  Landmark.swift
//  Landmarks
//
//  Created by xbk on 2021/6/29.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark:Hashable,Codable,Identifiable {
    
    var id:Int
    var name:String
    var park:String
    var state: String
    var description: String
    private var imageName:String
    
    var image: Image { // 计算属性
         Image(imageName)
     }
    
    private var coordinates: Coordinates
    
    var locationCoordinate:CLLocationCoordinate2D{
        
        CLLocationCoordinate2D(
            
            latitude: coordinates.latitude, longitude: coordinates.longitude
        )
    }

    struct Coordinates: Hashable, Codable {
          var latitude: Double
          var longitude: Double
    }
}
