import UIKit

class ViewController: UIViewController {
    
    var datasoure: [String] {
        #warning("Change the line below to add your own datasource")
        return ["Push", "Present"]
    }
    
    lazy var segmentedControl: UISegmentedControl = {
        let seg = UISegmentedControl(items: self.datasoure)
        seg.translatesAutoresizingMaskIntoConstraints = false
        
        return seg
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(segmentedControl)
        addConstraints()
        segmentedControl.addTarget(self, action: #selector(handleSegment), for: .valueChanged)
    }
    
    @objc func handleSegment(_ segment: UISegmentedControl) {
        #warning("Change the line below to add your own handler")
        print(segment.selectedSegmentIndex)
        
    }
    
    private func addConstraints() {
        segmentedControl.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor).isActive = true
        segmentedControl.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor).isActive = true
        segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
    }
}
