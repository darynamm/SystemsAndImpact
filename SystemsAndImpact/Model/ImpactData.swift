//
//  ImpactData.swift
//  SystemsAndImpact
//
//  Created by Manuilenko, Daryna on 9/20/22.
//

import MapKit



let definitionsBrochure = Bundle.main.url(forResource: "ComputingSystemsPDF", withExtension: "pdf")!

let ctecLocation = ComputingImpact(title: "CTEC!", details: "where we are right now!",
                                   location: MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.5875, longitude: -111.8684), span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02 )))


func loadImpactData() -> [ComputingImpact]

{
    var impactItems : [ComputingImpact] = []

    let regions : [CLLocationCoordinate2D] =
    
    [
        CLLocationCoordinate2D(latitude: 36.7783, longitude: -119.4179),
        CLLocationCoordinate2D(latitude: 25.2744, longitude: 133.7751),
        CLLocationCoordinate2D(latitude: 36.2048, longitude: 138.2529),
        CLLocationCoordinate2D(latitude: 23.5558
, longitude: 46.6396),
        CLLocationCoordinate2D(latitude: 37.0902, longitude: 95.7129),
    ]
    
    let details : [String] =
    [
        "Because there is a plethora of tech devices being wasted, a company in CA decided to embark on a journey to solve this issue. because even after the state of CA passed the recycling act, the e-waste has been piling up.",
        "Recently it has become easier to scam people online, pretending to be an authorized company, or finding details from people’s social media. The Australian government put out an official website of how to know your identity has been stolen, steps to take, and steps for future prevention",
        "AI Developers in Japan take a different approach to AI compared to the rest of the world. While facing the AI with questions that stimulate their intelligence, they also encourage the AI to develop in the right ways; the researchers ponder upon ethics, and social issues.",
        "Despite the fact that Brazil is considered to be one of the countries with the fastest growing economies, it still is considered to be a developing country. However, recently there was an increase in technology due to the pushing of the tech centers there. It has had tremendous effects on Brazil's education, and the overall success and well-being of the country.",
        "There is about a 25% gap of a digital divide in America. This doesn’t seem like a lot, but /4 of the population misses out on opportunities, jobs, and even homework, during the pandemic. As we move towards a past pandemic world, internet is essential and we need to do something about the digital divide, because the gap between it will only continue to grow."
    ]
    
    let titles : [String] =
    [
    "E-Waste management",
    "Identity Fraud in the Pandemic",
    "Advancing AI Ethics in Japan",
    "Increased Technology Trends in Sao Paulo ",
    "Digital divide in the US ",

    ]
    
    for index in 0 ..< 5
    {
        let currentRegion = MKCoordinateRegion (center: regions [index],
                                                span: (MKCoordinateSpan(latitudeDelta:10, longitudeDelta: 10)))
        impactItems.append(ComputingImpact(title: titles[index], details: details[index], location: currentRegion))
    }
    return impactItems
}
