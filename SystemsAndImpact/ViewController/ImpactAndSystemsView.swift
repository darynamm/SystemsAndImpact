//
//  ContentView.swift
//  SystemsAndImpact
//
//  Created by Manuilenko, Daryna on 9/16/22.
//

import SwiftUI

struct ImpactAndSystemsView: View
{
    let impacts = loadImpactData()
    var body: some View
    {
        NavigationView
        {
            List
            {
                Section(header: Text("Impacts of computing!"))
                {
                    ForEach(impacts)
                    {
                        impact in
                        
                        NavigationLink(impact.title, destination: ImpactDetailView(impact: impact))
                            .accessibilityLabel("Link to ImpactDetailView for \(impact.title)")
                    }
                }
                Section(header: Text("Systems"))
                {
                    Text("Also calling sooonnnnn")
                }
                
            }
        }
    }
}



struct ImpactAndSystemsView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ImpactAndSystemsView()
    }
}
