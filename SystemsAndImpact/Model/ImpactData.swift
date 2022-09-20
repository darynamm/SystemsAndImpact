//
//  ImpactData.swift
//  SystemsAndImpact
//
//  Created by Manuilenko, Daryna on 9/20/22.
//

import MapKit

let definitions = Bundle.main.url(forResource: "Placeholder", withExtension: "pdf")!

func loadImpactData() -> [ComputingImpact]

{
    var impactItems : [ComputingImpact] = []
    
    let regions : [CLLocationCoordinate2D] =
    
    [
        CLLocationCoordinate2D(latitude: 36.7783, longitude:119.4179),
        CLLocationCoordinate2D(latitude: 39.7783, longitude:116.4179),
        CLLocationCoordinate2D(latitude: 39.7783, longitude:116.4179),
        CLLocationCoordinate2D(latitude: 39.7783, longitude:116.4179),
        CLLocationCoordinate2D(latitude: 39.7783, longitude:116.4179),
    ]
    
    let details : [String] =
    [
        "Because there is a plethora of tech devices being wasted, a company in CA decided to embark on a journey to solve this issue. because even after the state of CA passed the recycling act, the e-waste has been piling up.",
        "then te next",
        "and so on",
        "keep going",
        "until done (in order of course!"
    ]
    
    let titles : [String] =
    [
    "E-Waste management",
    "for each",
    "of ",
    " ",
    " ",

    ]
    
    for index in 0 ..< 5
    {
        let currentRegion = MKCoordinateRegion (center: regions [index],
                                                span: (MKCoordinateSpan(latitudeDelta:10, longitudeDelta: 10)))
        impactItems.append(ComputingImpact(title: titles[index], details: details[index], location: currentRegion))
    }
    return impactItems
}
