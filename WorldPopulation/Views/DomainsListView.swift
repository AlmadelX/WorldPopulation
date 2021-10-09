import SwiftUI

struct DomainsListView: View {
    @EnvironmentObject var dataModel: DataModel
    
    var domains: [DomainModel] {
        Array(dataModel.domains[0..<11])
    }
    
    var body: some View {
        List {
            ForEach(domains) { domain in
                
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
