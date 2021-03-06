//
//  WeatherViewController.swift
//  Weather
//
//  Created by Svetlana Safonova on 23.02.2021.
//

import UIKit

class WeatherViewController: UICollectionViewController {

    private let weatherService: WeatherDataService = WeatherDataService()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WeatherForecastCell", for: indexPath) as? WeatherCell else { return UICollectionViewCell() }
    
        cell.configure(with: weatherService.getWeather())
        
        return cell
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

}
