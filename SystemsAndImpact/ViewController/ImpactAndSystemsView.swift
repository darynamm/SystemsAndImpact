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
                    ForEach(impacts.indices)
                    {
                        index in
                        NavigationLink(impacts[index].title, destination: ImpactDetailView(impact: impacts[index]))
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
