import SwiftUI

struct DomainRowView: View {
    var domain: DomainModel
    
    private var progress: Double {
        Double(domain.population) / Double(7752840550)
    }
    
    var body: some View {
        HStack(spacing: 0) {
            HStack {
                Spacer()
                
                Text(domain.label)
                    .fontWeight(.bold)
                    .padding(.trailing, 5)
                    .lineLimit(2)
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.trailing)
            }
            .frame(width: UIScreen.main.bounds.width / 3)
            
            BarView()
                .frame(width: CGFloat(progress) * UIScreen.main.bounds.width / 3)
                .padding(0)
            
            HStack(spacing: 0) {
                Text(String(domain.population))
                    .fontWeight(.bold)
                    .padding(.leading, 5)
                    .scaledToFill()
                    .lineLimit(1)
                
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width / 3)
            
            Spacer()
        }
        .frame(height: 30)
    }
}

struct DomainRowView_Previews: PreviewProvider {
    static var previews: some View {
        DomainRowView(domain: DomainModel(label: "Russian Federation", population: 144104080))
    }
}
