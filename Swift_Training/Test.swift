//
//  Test.swift
//  Swift_Training
//
//  Created by Taku Funakoshi on 2021/10/16.
//

import Foundation
import UIKit

class Test: UIView{
    @IBOutlet weak var testTableView: UITableView!
    
    //Codeから呼び出す際に使われる
    override init(frame:CGRect){
        super.init(frame: frame)
        loadNib()
    }
    //Storyboardから利用する際に使われる
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadNib()
    }
    
    //上記どちらのinitからも使用される共通関数で、xibファイルを呼び出す。
    func loadNib(){
        let view = Bundle.main.loadNibNamed("test", owner: self, options: nil)?.first as! UIView
        
        view.frame = self.bounds
        self.addSubview(view)
    }
}
