//
//  ViewController.swift
//  One-Lab2
//
//  Created by Bakdaulet Berdikul on 09.04.2022.
//
import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let  greenView: UIView = {
        var customView = UIView()
        customView.backgroundColor = .green
        return customView
    }()
    
    let  redView: UIView = {
        var customView = UIView()
        customView.backgroundColor = .red
        return customView
    }()
    
    let  blueView: UIView = {
        var customView = UIView()
        customView.backgroundColor = .blue
        return customView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureViews()
        
    }

    private func configureViews(){
        
        //Green view
        view.addSubview(greenView)
        greenView.snp.makeConstraints{
            $0.top.equalTo(view.snp.top).offset(50)
            $0.leading.equalTo(view.snp.leading).offset(50)
            $0.size.equalTo(100)
        }
        
        //Red view
        view.addSubview(redView)
        redView.snp.makeConstraints{
            $0.top.equalTo(greenView.snp.bottom)
            $0.leading.equalTo(greenView.snp.trailing).offset(40)
            $0.size.equalTo(100)
        }
        
        //Blue view
        view.addSubview(blueView)
        blueView.snp.makeConstraints{
            $0.top.equalTo(redView.snp.bottom)
            $0.trailing.equalTo(redView.snp.leading).inset(25)
            $0.size.equalTo(100)
        }

    }
}

