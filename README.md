# TenorAPIKit

TenorAPIKit provides trending GIFs, trending tags, trending categories, GIF search, autocomplete results, and search suggestions from the Tenor API.

## Requirements
- iOS 15.0 or later

## Installation
### Installation from Xcode
- Open Your Project from Xcode
- then click  (File > Add Packages).
- Now Enter https://github.com/sagarthecoder/TenorAPIKit in the search box.
- Click Add Package

## Usage

```ruby
import TenorAPIKit
```
```swift
let service = TenorService()
```

```swift
service.getCategories(key: key) { categoryList in
    /// Trending Category List
}
```

```swift
service.getTrendingGifs(key: key, limit: 10, pos: nil) { tenorResults in
      /// Trending Tenor Results
}
```

```swift
service.getTrendingTags(key: key, limit: 10) { terms in
      /// Trending Terms
}
```

```swift
service.searchGifs(key: key, searchKey: "love", limit: 10, pos: nil) { results in
      /// search results
}
```

```swift
service.getSearchSuggestions(key: key, searchKey: "smile", limit: 10, pos: nil) { suggestions in
    /// search suggestions
}
```

```swift
service.getAutocompleteTags(key: key, query: "exc", limit: 5) { results in
       /// autocomplete results
}
```
`
Note : pos means pagination key. pos = "0" means no pagination exists.
 If pos is set as nil then pagination won't work.
`
