import SwiftUI

struct ContentView: View {
    @Environment(\.verticalSizeClass) var heightSize
    
    var body: some View {
        VStack {
            Text("World Population")
                .font(.title)
                .fontWeight(.heavy)
            Text("Ten most popular countries")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Group {
                if heightSize == .regular {
                    Spacer()
                        .frame(height: 20)
                } else {
                    Spacer()
                        .frame(width: 0)
                }
            }
            
            DomainsListView()
        }
        .padding(.vertical, 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DataModel())
    }
}
