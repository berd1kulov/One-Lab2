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
    
    let  yellowView: UIView = {
        var customView = UIView()
        customView.backgroundColor = .yellow
        return customView
    }()
    
    let  blackView: UIView = {
        var customView = UIView()
        customView.backgroundColor = .black
        return customView
    }()
    
    let  grayView: UIView = {
        var customView = UIView()
        customView.backgroundColor = .gray
        return customView
    }()
    
    let  purpleView: UIView = {
        var customView = UIView()
        customView.backgroundColor = .purple
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

        //Yellow view
        view.addSubview(yellowView)
        yellowView.snp.makeConstraints{
            $0.top.equalTo(blueView.snp.bottom)
            $0.trailing.equalTo(blueView.snp.leading).offset(25)
            $0.size.equalTo(100)
        }
        
        //Black view
        view.addSubview(blackView)
        blackView.snp.makeConstraints{
            $0.top.equalTo(yellowView.snp.bottom).offset(30)
            $0.trailing.equalTo(yellowView.snp.leading).offset(25)
            $0.size.equalTo(100)
        }
        
        //Gray view
        view.addSubview(grayView)
        grayView.snp.makeConstraints{
            $0.top.equalTo(blackView.snp.bottom).insert(25)
            $0.trailing.equalTo(yellowView.snp.leading)
            $0.size.equalTo(100)
        }
        
        //purple view
        view.addSubview(purpleView)
        purpleView.snp.makeConstraints{
            $0.top.equalTo(yellowView.snp.bottom)
           // $0.trailing.equalTo(redView.snp.leading).offset(25)
            centerXAnchor.constraint(equalTo: grayView.centerXAnchor)
            centerYAnchor.constraint(equalTo: grayView.centerYAnchor)
            $0.size.equalTo(50)
        }

    }
}

