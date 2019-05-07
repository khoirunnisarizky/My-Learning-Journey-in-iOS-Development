import UIKit
import PlaygroundSupport
import Foundation

class myViewController : UIViewController {
    
    override func loadView() {
        super.loadView()
        let frame = CGRect(x: 0, y: 0, width: 50, height: 500)
            view.frame = frame // dasarnya jadi size di atas ga ngaruh
            view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        //mau liat komposisinya klik di kolomnya tekan command slash
        
        let newView = UIView(frame: CGRect(x: 150, y: 250, width: 50, height: 50))
        
        let warna : UIColor = UIColor(displayP3Red: 0.5, green: 0.5, blue: 1, alpha: 1)
        
        //RGB dan alpha berada di [0,1]
        //alpha berpengaruh pada tingkat transparansi
        
        newView.backgroundColor = warna
        view.addSubview(newView) // nambah view
        
    }
}

PlaygroundPage.current.liveView = myViewController()






