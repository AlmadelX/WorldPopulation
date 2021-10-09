import Foundation

final class DataModel: ObservableObject {
    @Published var domains: [DomainModel]
    
    init() {
        guard let filepath = Bundle.main.path(forResource: "data", ofType: "csv")
        else {
            fatalError("Couldn't find data in the main bundle.")
        }
        
        let data: String
        do {
            data = try String(contentsOfFile: filepath)
        } catch {
            fatalError("Couldn't convert file to string.")
        }
        
        var rows = data.components(separatedBy: "\n")
        rows.removeFirst(5)
        rows.removeLast()
        
        domains = []
        for row in rows {
            let columns = row.components(separatedBy: ",")
            var label = columns[0]
            label.removeFirst()
            label.removeLast()
            for column in columns.reversed() {
                if column.count < 2 {
                    continue
                }
                var string = column
                string.removeFirst()
                string.removeLast()
                if let population = UInt64(string) {
                    domains.append(DomainModel(label: label, population: population))
                    break
                }
            }
        }
        domains.sort { (a: DomainModel, b: DomainModel) -> Bool in
            return a.population > b.population
        }
        print(domains)
    }
}
