//
//  Computingimpact.swift
//  SystemsAndImpact
//
//  Created by Manuilenko, Daryna on 9/20/22.
//

import MapKit

struct ComputingImpact : Identifiable 
{
    let id = UUID()
    let title : String
    let details : String
    var location : MKCoordinateRegion
}
