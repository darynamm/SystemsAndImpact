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
                        
                        NavigationLink(impact.title, destination: ImpactDetailView(with: impact))
                            .accessibilityLabel("Link to ImpactDetailView for \(impact.title)")
                            .accessibilityValue("Click the link to go to ImpactDetailVew for \(impact.title)")
                        
                    }
                }
                Section(header: Text("Systems"))
                {
                    NavigationLink("Computing Definitions Brochure", destination: PDFKitView())
                        .accessibilityLabel("Computing definitions brochure")
                        .accessibilityValue("Click the button to go to the computing definitions brochure ")
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
