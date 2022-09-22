//
//  ImpactDetailView.swift
//  SystemsAndImpact
//
//  Created by Manuilenko, Daryna on 9/20/22.
//

import SwiftUI
import MapKit

struct ImpactDetailView: View
{
    @State private var impact : ComputingImpact
    private var mapItems : [ComputingImpact]
    
    init (with impact : ComputingImpact)
    {
        _impact = State(initialValue: impact)
        self.mapItems = [ctecLocation, impact]
    }
    
    var body: some View
    {
        VStack
        {
            Text(impact.title)
                .accessibilityLabel("Title of impact")
                .accessibilityValue(impact.title)
            Map(coordinateRegion: $impact.location, annotationItems: mapItems)
            {
                pin in
                MapMarker(coordinate: pin.location.center, tint: .purple)
            }
            .onAppear
            {
                withAnimation
                {
                    impact.location.span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 1.5)
                }
            }
            .accessibilityLabel("Map of region")
            .accessibilityValue("Map of: latitude: \(impact.location.center.latitude) longitude: \(impact.location.center.longitude)")
                .frame(height:400)
            Text(impact.details)
                .accessibilityLabel("Details of computing impact")
                .accessibilityValue(impact.details)
        }
    }
}

struct ImpactDetailView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ImpactDetailView(with: loadImpactData()[0])
    }
}
