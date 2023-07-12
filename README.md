# TableViewCellRegistrar

## UITableViewCells registration and dequeuing

This is simple UITableView extension which allows you to register table cells using their class names as an identifier.

So instead of writing
```
self.tableView?.register(nil, forCellReuseIdentifier: "Your Identifier")
```
you write
```
self.tableView?.register(cellClass: YourTableViewCell.self)
```
or
```
self.tableView?.register(cells: YourTableViewCell.self, YourSecondTableViewCell.self)
```

To get cell by this identifier you write:
```
self.tableView?.dequeueReusableCell(withCellClass: YourTableViewCell.self, for: indexPath)
```

## UITableViewHeaderFooterViews registration and dequeuing

This extension also allows you using the same principle to register headers and footers for table sections.

Instead of writing
```
self.tableView?.register(YourHeaderFooterClass.self, forHeaderFooterViewReuseIdentifier: "Your Identifier")
```
you write
```
self.tableView?.register(headerFooterClass: YourHeaderFooterClass.self)
```
or
```
self.tableView?.register(headerFooters: [YourHeaderFooterClass.self, YourSecondHeaderFooterClass.self])
```

To get header/footer by this identifier you write:
```
self.rootView?.tableView.dequeueReusableHeaderFooterView(withHeaderFooterClass: YourHeaderFooterClass.self)
```

## Requirements

iOS 9+. Swift 3.0.

## Installation

TableViewCellRegistrar is available through CocoaPods. To install it, simply add the following line to your Podfile:
```
pod "TableViewCellRegistrar"
```
TableViewCellRegistrar is available through Carthage. To install it, simply add the following line to your Cartfile:
```
github "idapgroup/TableViewCellRegistrar"
```
## License

TableViewCellRegistrar is available under the New BSD license. See the LICENSE file for more info.
