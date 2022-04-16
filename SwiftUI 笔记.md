1. Stacks group views horizontally, vertically, or back to front. You use stacks to combine and layer view components.

2. modifiers 的作用就是 adjust the appearance

3. ```swift
   var body: some View {
       Button(action: {}) {
           Label("Skip song", systemImage: "forward")
       }
       .accessibilityLabel(Text("Skip song"))
   }
   VoiceOver reads the systemImage values, so you need to add an accessibility label to describe the element. You don’t have to include “Button” because it’s a trait that VoiceOver already reads.
   ```

4. ```swift
   ForEach(sessions, id: \.sessionNumber) { session in
       Text(session.title)
   }
   Passing the \.sessionNumber key path to the ForEach initializer establishes identity.
   ```

5. `ForEach`、`if` 、 `guard`.

6. 

