
# GeometryReader

### What is `GeometryReader`?

- **Container**: `GeometryReader` is a container view in SwiftUI that can contain other views.
- **Provides Size Information**: It provides access to the size and position of the container within its coordinate space.
- **Child Views**: It can draw and position child views based on the size and position information it provides.

### How `GeometryReader` Works:

1. **Encapsulates Child Views**: You place your child views inside a `GeometryReader`.
2. **Access Geometry Proxy**: The `GeometryReader` provides a `GeometryProxy` object to its closure, which contains size and position information of the parent container.
3. **Use Geometry Proxy**: You can use this `GeometryProxy` to position and size the child views dynamically based on the available space.

### Example:

Here’s a simple example to demonstrate the concept of `GeometryReader`:

```swift
import SwiftUI

struct GeometryReaderExample: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("Width: \(geometry.size.width)")
                Text("Height: \(geometry.size.height)")
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            .background(Color.blue)
        }
        .background(Color.red)
    }
}

struct GeometryReaderExample_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderExample()
    }
}
```

### Explanation:

1. **Container**: The `GeometryReader` acts as a container.
2. **GeometryProxy**: Inside the `GeometryReader`, the `geometry` parameter is of type `GeometryProxy`, which provides the `size` property.
3. **Dynamic Layout**: The `VStack` uses the `geometry.size` to set its own frame, making its layout dynamic based on the `GeometryReader`'s size.

In the refactored code from the previous message, `GeometryReader` is used to dynamically position the intercept lines based on the size of the chart. The `InterceptLinesView` uses the size provided by `GeometryReader` to calculate the positions of the lines and labels relative to the chart's dimensions.


## Lessons Learned

- Introduction to GeometryReader. 


## API Documentation

[Documentation](https://developer.apple.com/documentation/swiftui/geometryreader)


