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
        PDFKitRepresentedView(url: definitionsBrochure)
            .accessibilityLabel("Loads a PDF Brochure")
            .accessibilityValue("PDF from internal URL")
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
        pdfView.minScaleFactor = pdfView.scaleFactorForSizeToFit
        pdfView.maxScaleFactor = 15.0
        pdfView.minScaleFactor = 0.25
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
