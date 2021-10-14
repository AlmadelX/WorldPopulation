import SwiftUI

struct DomainsListView: View {
    @EnvironmentObject var dataModel: DataModel
    @Environment(\.verticalSizeClass) var heightSize
    
    var domains: [DomainModel] {
        Array(dataModel.domains[0..<11])
    }
    
    var body: some View {
        VStack {
            ForEach(domains, id: \.label) { domain in
                DomainRowView(domain: domain)
                    .frame(width: UIScreen.main.bounds.width, height: heightSize == .regular ? 30: 20)
            }
        }
    }
}

struct DomainsListView_Previews: PreviewProvider {
    static var previews: some View {
        DomainsListView()
            .environmentObject(DataModel())
    }
}
