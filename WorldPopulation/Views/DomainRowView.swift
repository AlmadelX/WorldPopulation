import SwiftUI

struct DomainRowView: View {
    var domain: DomainModel
    
    var body: some View {
        HStack(spacing: 0) {
            Text(domain.label)
                .fontWeight(.bold)
//                .scaledToFill()
//                .lineLimit(1)
                .frame(width: UIScreen.main.bounds.width / 3)
            
            BarView(value: domain.population, max: 7752840550)
                .frame(width: UIScreen.main.bounds.width / 3, height: 30)
            
            Text(String(domain.population))
                .fontWeight(.bold)
//                .scaledToFill()
//                .lineLimit(1)
                .frame(width: UIScreen.main.bounds.width / 3)
        }
    }
}

struct DomainRowView_Previews: PreviewProvider {
    static var previews: some View {
        DomainRowView(domain: DomainModel(label: "United States", population: 329484120))
    }
}
