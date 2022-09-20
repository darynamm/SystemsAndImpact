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
    @State var impact : ComputingImpact
    var body: some View
    {
        VStack
        {
            Map(coordinateRegion: $impact.location)
                .frame(height:400)
            Text(impact.details)
        }
    }
}

struct ImpactDetailView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ImpactDetailView(impact: loadImpactData()[0])
    }
}
