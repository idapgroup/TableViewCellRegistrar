# TableViewCellRegistrar

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
