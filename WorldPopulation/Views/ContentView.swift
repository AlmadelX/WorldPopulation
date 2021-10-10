import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("World Population")
                .font(.title)
                .fontWeight(.bold)
            Text("Ten most popular countries")
                .font(.subheadline)
                .fontWeight(.regular)
            
            Spacer()
            
            DomainsListView()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DataModel())
    }
}
