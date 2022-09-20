//
//  ImpactData.swift
//  SystemsAndImpact
//
//  Created by Manuilenko, Daryna on 9/20/22.
//

import MapKit

func loadImpactData() -> [ComputingImpact]

{
    var impactItems : [ComputingImpact] = []
    
    let regions : [CLLocationCoordinate2D] =
    
    [
        CLLocationCoordinate2D(latitude: 36.7783, longitude:119.4179),
        CLLocationCoordinate2D(latitude: 39.7783, longitude:116.4179),
        CLLocationCoordinate2D(latitude: 35.7783, longitude:112.4179),
        CLLocationCoordinate2D(latitude: 31.7783, longitude:133.4179),
        CLLocationCoordinate2D(latitude: 33.7783, longitude:89.4179)
    ]
    
    let details : [String] =
    [
        "First item details",
        "then te next",
        "and so on",
        "keep going",
        "until done (in order of course!"
    ]
    
    let titles : [String] =
    [
    "Title",
    "for each",
    "of ",
    " ",
    " ",

    ]
    return impactItems
}
