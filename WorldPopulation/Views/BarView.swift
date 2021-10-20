import SwiftUI

struct BarView: View {
    @State private var isVisible = false
    
    let colors = [Color("DarkGreen"), Color("LightGreen")]
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: colors),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
            .cornerRadius(5.0)
            .opacity(isVisible ? 1.0 : 0.0)
            .scaleEffect(isVisible ? 1.0 : 0.1)
            .onAppear {
                withAnimation(.spring(response: 0.4, dampingFraction: 0.2, blendDuration: 0.1)) {
                    self.isVisible.toggle()
                }
            }
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView()
            .frame(width: UIScreen.main.bounds.width, height: 30)
    }
}
