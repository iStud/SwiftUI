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

6. State 作用：修改结构体中的属性，当关键词 @State 修饰的属性被修改，整个 view 的 body 就会被重新渲染。

7. Binding 作用

8. `@State` makes the local property mutable, and the view in which you define `@State` observes changes in the property and updates the appropriate parts of the view accordingly.

   Properties that you label `@State` are mutable, and the system observes these properties for changes in the view where you define them.

9. you add to the beginning of a child view’s declaration to include a reference to the parent view’s `@State` property

6. Nested Types

