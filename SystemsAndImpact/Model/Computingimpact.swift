//
//  Computingimpact.swift
//  SystemsAndImpact
//
//  Created by Manuilenko, Daryna on 9/20/22.
//

import MapKit

struct ComptingImpact : Identifiable 
{
    let id = UUID()
    let title : String
    let details : String
    var location : MKCoordinateRegion
}
