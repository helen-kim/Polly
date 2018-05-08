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
    var lang:String?
    
    @IBOutlet weak var navtitle: UINavigationItem!
    
    var pages = [
        Page(imageName: "capstone v1-1", titleText: "Addition", descriptionText: "An addition error occurs when the interpreter introduces superfluous information or translates with added stylistic effects."),
        Page(imageName: "capstone v1-5", titleText: "Cohesion", descriptionText: "A cohesion error occurs when the interpretation is hard to follow because of inconsistent use of terminology, misuse of pronouns, inappropriate conjunctions, or other structural errors."),
        Page(imageName: "capstone v1-4", titleText: "Editorialization", descriptionText: "An editorialization error occurs when the interpreter’s personal view is added to the translation."),
        Page(imageName: "capstone v1-2", titleText: "False Fluency", descriptionText: "A false fluency error occurs when the interpreter uses words or phrases that are incorrect or nonexistent in a particular language. This can include words that appear similar but actually have dissimilar meaning in different languages."),
        Page(imageName: "capstone v1-3", titleText: "Omission", descriptionText: "An omission error occurs when the interpreter does not fully translate or substitutes words or phrases during translation.")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(lang!)
        setContent(lang!)
        setupBottomControls()
        
    }
    
    func setContent(_ lang:String) {
        if lang == "한국어" {
            navtitle.title = "번역 특강"
            pages = [
                Page(imageName: "capstone v1-1", titleText: "추가 내용 오류", descriptionText: "통역사가 중간에 불필요한 정보를 덧붙이거나 과장된 말투로 설명을 하며 발생하는 오류."),
                Page(imageName: "capstone v1-5", titleText: "일관성 오류", descriptionText: "통역 도중 의학 단어, 대명사, 문장 구조 등 전달해야 하는 정보의 일관성이 떨어져서 통역 내용을 따라가는 게 힘들어지는 오류. "),
                Page(imageName: "capstone v1-4", titleText: "편견 오류", descriptionText: "통역사의 편견이나 개인적인 생각이 개입되면서 통역 내용이 변질되는 오류."),
                Page(imageName: "capstone v1-2", titleText: "거짓된 유창함", descriptionText: "통역 도중 대상 언어에 없거나 틀린 단어 또는 구절로 통역해서 발생하는 오류. 통역하면서 비슷하게 들리거나 보이지만 실제 뜻은 다른 단어들을 사용하는 것도 포함됨."),
                Page(imageName: "capstone v1-3", titleText: "생략된 내용 오류", descriptionText: "통역 도중 단어나 구절을 생략하거나 다른 내용으로 대체하며 발생하는 오류.")
            ]
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hide the nav bar
//        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        
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
