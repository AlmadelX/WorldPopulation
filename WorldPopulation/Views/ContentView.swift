import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Text("World Population")
                .font(.title)
                .fontWeight(.bold)
            Text("Ten most popular countries")
                .font(.subheadline)
                .fontWeight(.regular)
                .padding(.bottom, 20)
            
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
