//
//  PlanetsCollectionViewController.swift
//  Planets
//
//  Created by Lambda_School_Loaner_241 on 2/19/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit



class PlanetsCollectionViewController: UICollectionViewController {
    
    private let planetController = PlanetController() // made a  instance of planetController to manipulate on this page

    
    
    @IBAction func unwindToPlanetCollectionViewController(segue: UIStoryboardSegue){
        self.collectionView.reloadData()
        
    }
    
    

 
// MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return planetController.planets.count
    }

  
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlanetCell", for: indexPath) as? PlanetCollectionViewCell else { return UICollectionViewCell() }
        
        let planet = planetController.planets[indexPath.item]
        cell.planet = planet
    
        // Configure the cell
    
        return cell
    }

   
}
