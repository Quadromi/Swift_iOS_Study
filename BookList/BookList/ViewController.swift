import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchBookData { books in
            for book in books{
                print(book.title!)
            }
        }
    }
    
    func fetchBookData(completionHandler: @escaping([Book]) -> Void){
        let bookListURL = "";
        
        guard let url = URL(string: bookListURL) else { return }
        
        let dataTask = URLSession.shared.dataTask(with: url){
            (data, response, error) in
            
            do{
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([Book].self, from: data!)
                
                completionHandler(jsonData)
            }catch{
                let error = error
                print(error.localizedDescription)
            }
        }
        dataTask.resume()
    }

}

