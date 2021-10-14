import SwiftUI

struct BarView: View {
    let colors = [Color("DarkGreen"), Color("LightGreen")]
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: colors),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
            .cornerRadius(5.0)
            .transition(.move(edge: .leading))
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView()
            .frame(width: UIScreen.main.bounds.width, height: 30)
    }
}
