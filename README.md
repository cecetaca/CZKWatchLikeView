# CZKWatchLikeView

![language](https://img.shields.io/badge/Language-%20Swift%20-orange.svg)

A very simple UIView subclass that is similar to the profile badges that represent the names of your friends on the Apple Watch.


Comes with sample project.
Again, just playing around with Swift.

### How to use

* Drag 'CZKWatchLikeView.swift' to your Xcode project.

You can use your own width, backgroundColor and name values.
What do I mean by "name" value? Just pass a String like "Cecilio Tamarit" and "CT" will show up in the label of the View. If you enter only one word, e.g. "Cecilio", only "C" will show up.

Just init and use.

```swift
let testView = CZKWatchLikeView(width: 100, backgroundColor: UIColor.greenColor(), name: "Cecilio Tamarit")
view.addSubview(testView)

```

Now you can set the text of the nameLabel yourself or automagically:
```swift
//Good old way
testView.text = "CT"

//Automagically
testView.setTitleFromFullName("Cecilio Tamarit") //Will display "CT"

```

As you can see, once more, it's a very simple thing. I was just testing around and decided to commit. :-)
(Again. I do that now, apparently.)

### License
MIT
