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
NavigationView
        {
            List
            {
                Section(header: Text("Impacts"))
                {
                    Text("Coming soon!")
                }
                Section(header: Text("Systems"))
                {
                    Text("Also calling sooonnnnn")
                }
            }
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
