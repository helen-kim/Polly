//
//  CrashCourseViewController.swift
//  Polly
//
//  Created by Sophie Zhao on 4/29/18.
//  Copyright © 2018 translators. All rights reserved.
//

import UIKit

extension UIColor {
    static var blue = UIColor(red: 232/255, green: 68/255, blue: 133/255, alpha: 1)
}

class CrashCourseViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let pages = [
        Page(imageName: "capstone v1-1", titleText: "addition", descriptionText: "An addition error occurs when the interpreter introduces superfluous information or translates with added stylistic effects."),
        Page(imageName: "capstone v1-2", titleText: "cohesion", descriptionText: "A cohesion error occurs when the interpretation is hard to follow because of inconsistent use of terminology, misuse of pronouns, inappropriate conjunctions, or other structural errors."),
        Page(imageName: "capstone v1-3", titleText: "editorialization", descriptionText: "An editorialization error occurs when the interpreter’s personal view is added to the translation."),
        Page(imageName: "capstone v1-4", titleText: "false fluency", descriptionText: "A false fluency error occurs when the interpreter uses words or phrases that are incorrect or nonexistent in a particular language. This can include words that appear similar but actually have dissimilar meaning in different languages."),
        Page(imageName: "capstone v1-5", titleText: "omission", descriptionText: "An omission error occurs when the interpreter does not fully translate or substitutes words or phrases during translation.")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupBottomControls()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hide the nav bar
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        let collectionView:UICollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = UIColor.white
        collectionView.register(PageCell.self, forCellWithReuseIdentifier: "cellId")
        collectionView.isPagingEnabled = true
        view.addSubview(collectionView)
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // dequeue and cast as PageCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! PageCell

        let page = pages[indexPath.item]
        cell.page = page
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    // make sure you apply the correct encapsulation principles in your classes
    private let previousButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("PREV", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.gray, for: .normal)
        return button
    }()
    
    private let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("NEXT", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()
    
    private let pageControl: UIPageControl = {
        let pc = UIPageControl()
        pc.currentPage = 0
        pc.numberOfPages = 4
        pc.currentPageIndicatorTintColor = .blue
        pc.pageIndicatorTintColor = UIColor(red: 249/255, green: 207/255, blue: 224/255, alpha: 1)
        return pc
    }()
    
    fileprivate func setupBottomControls() {

        let bottomControlsStackView = UIStackView(arrangedSubviews: [previousButton, pageControl, nextButton])
        bottomControlsStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomControlsStackView.distribution = .fillEqually
        //        bottomControlsStackView.axis = .vertical
        
        view.addSubview(bottomControlsStackView)
        
        NSLayoutConstraint.activate([
            //            previousButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            bottomControlsStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bottomControlsStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bottomControlsStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bottomControlsStackView.heightAnchor.constraint(equalToConstant: 50)
            ])
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
