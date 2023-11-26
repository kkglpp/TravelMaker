//
//  MapViewController.swift
//  TravelMaker
//
//  Created by ms k on 2023/09/22.
//

import UIKit
import NMapsMap

class MapViewController: UIViewController {
    
    let naverMapView = NMFNaverMapView(frame: UIScreen.main.bounds)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaultCameraPosition = NMFCameraPosition(NMGLatLng(lat: 37.54330366, lng: 127.04455548), zoom: 15, tilt: 0, heading: 0)
        var naverMapView = NMFNaverMapView()

        naverMapView = NMFNaverMapView(frame: view.frame)
        view.addSubview(naverMapView)
        naverMapView.mapView.moveCamera(NMFCameraUpdate(position: defaultCameraPosition))
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
