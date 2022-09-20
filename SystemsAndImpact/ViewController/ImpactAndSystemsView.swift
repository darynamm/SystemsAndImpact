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
        Text("Hello, world!")
            .padding()
    }
}

struct ImpactAndSystemsView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ImpactAndSystemsView()
    }
}
