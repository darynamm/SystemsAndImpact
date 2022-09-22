//
//  PDFKitView.swift
//  SystemsAndImpact
//
//  Created by Manuilenko, Daryna on 9/22/22.
//

import SwiftUI
import PDFKit

struct PDFKitView: View
{
    var body: some View
    {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}


struct PDFKitRepresentedView : UIViewRepresentable
{
    
    let url : URL
    init (url : URL)
    {
        self.url = url
    }
    func makeUIView(context: Context) -> some UIView
    {
        let pdfView : PDFView = PDFView()
        pdfView.document = PDFDocument(url: self.url)
        pdfView.autoScales = true
        pdfView.displayDirection = .vertical
        
        return pdfView
    }
    
    func updateUIView(_ uiView : UIViewType, context : Context) -> Void
    {
        //do not put any code in here
    }
}
struct PDFKitView_Previews: PreviewProvider
{
    static var previews: some View
    {
        PDFKitView()
    }
}
