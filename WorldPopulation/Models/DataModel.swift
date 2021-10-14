import Foundation

final class DataModel: ObservableObject {
    @Published var domains: [DomainModel]
    
    init() {
        //hardcoded data
        domains = [
            DomainModel(label: "World", population: 7752840550),
            DomainModel(label: "China", population: 1402112000),
            DomainModel(label: "India", population: 1380004390),
            DomainModel(label: "United States", population: 329484120),
            DomainModel(label: "Indonesia", population: 273523620),
            DomainModel(label: "Pakistan", population: 220892330),
            DomainModel(label: "Brazil", population: 212559410),
            DomainModel(label: "Nigeria", population: 206139590),
            DomainModel(label: "Bangladesh", population: 164689380),
            DomainModel(label: "Russian Federation", population: 144104080),
            DomainModel(label: "Mexico", population: 128932750)
        ]
    }
}
