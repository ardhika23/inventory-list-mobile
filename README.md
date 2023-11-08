# 📝Inventory List Mobile📝

**Student Details :**

|  `Attribute`  |               `Information`               |
|---------------|-------------------------------------------|
| Name          | Ardhika Satria Narendra                   |
| Student ID    | 2206821866                                |
| Class         | PBP KKI                                   |

---
<details>
<summary>Assignment 7: Flutter Basic Elements</summary>

## Questions and Answers

### -> What are the main differences between stateless and stateful widget in Flutter?

- Stateless Widgets:
Stateless Widgets are simple. In Stateless Widgets they only create themselves once, using the data you provide in their elements (text, color, etc.). Unless the information changes, they remain unchanged over time. They don't have to monitor any changes, which makes them effective.

    Example: 
    Imagine a stateless widget as an object of art that is displayed on a gallery wall. This landscape painting is stunning. It is simply there for people to look at; it doesn't make any changes on its own. It's the same painting in the gallery every time you walk in. It just captures a single point in time and is static. A stateless widget in Flutter resembles this artwork. Until the developer (the artist) chooses to remove it and hang a new painting (update the widget with new data), nothing will change. 

    Stateless Widgets is always the same unless someone actively changes or modifies it. It remains unchanged.

- Stateful Widgets:
In Stateful Widgets when something changes, they are able to stay informed and make updates to themselves. They possess a "memory" of their present situation. As a result, the program will remember and update to reflect any modifications made to any user input, timers, or other features over time.

    Example: 
    Now imagine a digital clock placed next to the artwork. With seconds counting down, the current time appears on this clock. It always displays the most recent time, which is refreshed every second. The time will have changed if you turn away and then turn back around. The clock is always current and "remembers" the time. A stateful widget in Flutter is similar to this digital clock. It could changes anytime when developer input something . It can refresh itself (the display updates every second) and remember information (such the current time) and if something interacts with it (like setting an alarm), the stateful widget can respond and remember this new state (the time the alarm is set for). 

    Stateful Widget is dynamic, changing on its own, updating what it displays as time goes by, and remembering the changes that occur.

---

### -> Explain all widgets that you used in this assignment.
- `MaterialApp`: The starting point of a Material Design app. It's usually the root of the widget tree and wraps a number of widgets that commonly provide functionality like navigation, theming, and localization.

- `ThemeData`: This is used to share colors and font styles throughout the app. It allows for consistent design across the app and adherence to Material Design guidelines.

- `Scaffold`: It offers a framework with default app bar, body, floating action button, drawer, and bottom navigation. It’s like the backbone for a screen in Flutter.

- `AppBar`: Provides a standard app bar with a title, back button, and actions. It's automatically implied to contain navigation and status information.

- `Padding`: This widget is often used to create whitespace around a widget to avoid a cramped layout.

- `Column`: Useful for displaying widgets in a vertical manner. It can be thought of as a div in HTML that uses a column-based layout.

- `Text`: The most commonly used widget for showing content on the screen. It can be styled using the style property to change things like font size, weight, color, etc.

- `GridView.count`: It allows you to create a grid layout with a specific number of columns (defined by crossAxisCount). Each child of the GridView is placed in a tile and arranged into a two-dimensional array.

- `MenuCard`: This is a custom widget that you would define in your Flutter code. It encapsulates the visual structure and behavior of a menu item card.

- `InkWell`: A widget that provides feedback to a user's interaction with its child, usually by displaying a ripple effect upon touch. It's commonly used with Material to provide visual feedback.

- `Container`: A multi-purpose widget that can be used to apply padding, margins, borders, or color to its child. It's also useful for alignment and sizing.

- `Center`: Centers its child within the available space. It's a straightforward way to align a widget along both the X and Y axes.

- `Icon`: Displays a graphical icon from the material icons library. It's typically used for buttons, form fields, and in AppBar actions.

- `SnackBar`: An overlay used to display a lightweight message at the bottom of the screen. It can be swiped to dismiss and can include an optional action.

---

### -> Explain how you implemented the checklist above step-by-step (not just following the tutorial).

1. **Generate a new Flutter Project**

    A new Flutter project called `inventory_list` is created by running the `flutter create` command in the terminal. This initializes a fresh Flutter application with all the necessary files and directories following Flutter's default project structure.

    The purpose of this step is to set up the base environment for Flutter development. This creates a number of files and directories that are standard for all Flutter projects, including Dart code files, resources, and configuration files that define the project's dependencies and settings.

    ```
    flutter create inventory_list
    cd inventory_list
    flutter run
    ```

2. **Main.dart file modification**

    The `main.dart` file, which serves as the entry point of the Flutter application, is modified to include imports for Flutter material components and the custom `menu.dart` file. The `MyApp` class is also modified to return a `MaterialApp` with an indigo color theme.

    Modifying the `main.dart` file is essential to configure the initial settings of the application, such as its title, theme, and the home screen widget. By importing `menu.dart`, i make the `MyHomePage` widget available to `MaterialApp`. Changing the theme color to indigo customizes the look and feel of the application to match the desired aesthetic.

    ```
    import 'package:flutter/material.dart';
    import 'package:inventory_list/menu.dart';

    void main() {
    runApp(const MyApp());
    }

    class MyApp extends StatelessWidget {
    const MyApp({super.key});

    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            // This is the theme of your application.
            //
            // TRY THIS: Try running your application with "flutter run". You'll see
            // the application has a blue toolbar. Then, without quitting the app,
            // try changing the seedColor in the colorScheme below to Colors.green
            // and then invoke "hot reload" (save your changes or press the "hot
            // reload" button in a Flutter-supported IDE, or press "r" if you used
            // the command line to start the app).
            //
            // Notice that the counter didn't reset back to zero; the application
            // state is not lost during the reload. To reset the state, use hot
            // restart instead.
            //
            // This works for code too, not just values: Most code changes can be
            // tested with just a hot reload.
            // colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
            // useMaterial3: true,
            primarySwatch: Colors.indigo
        ),
        home: MyHomePage(),
        );
    }
    }
    ```

3. **Create a new file named `menu.dart` in the `inventory_list/lib` and create the `HomePage` widget**

    A new file named `menu.dart` is created within the `lib` directory of the Flutter project. Inside `menu.dart`, the `MyHomePage` stateless widget is defined, which uses a `Scaffold` to structure the layout of the home page. This includes an `AppBar`, a `GridView` for items, and custom `ShopCard` widgets.

    Creating a separate `menu.dart` file helps organize the code by separating the home page layout and logic from the main application file. The `Scaffold` provides a standard app layout structure with common elements like an app bar and body. The `GridView` is used to create a grid of cards for each shop item, providing a responsive layout for different screen sizes. The `ShopCard` widgets are used to encapsulate the design and behavior of each card, making the code more modular and reusable.

    ```
    import 'package:flutter/material.dart';

    class MyHomePage extends StatelessWidget {
    MyHomePage({Key? key}) : super(key: key);

    final List<ShopItem> items = [
        ShopItem("View Items", Icons.checklist, Colors.green),
        ShopItem("Add Item", Icons.add_shopping_cart, Colors.blue),
        ShopItem("Logout", Icons.logout, Colors.red),
    ];


    // This widget is the home page of your application. It is stateful, meaning
    // that it has a State object (defined below) that contains fields that affect
    // how it looks.

    // This class is the configuration for the state. It holds the values (in this
    // case the title) provided by the parent (in this case the App widget) and
    // used by the build method of the State. Fields in a Widget subclass are
    // always marked "final".

    @override
        Widget build(BuildContext context) {
            return Scaffold(
            appBar: AppBar(
                title: const Text(
                'Inventory List',
                ),
            ),
            body: SingleChildScrollView(
                // Scrolling wrapper widget
                child: Padding(
                padding: const EdgeInsets.all(10.0), // Set padding for the page
                child: Column(
                    // Widget to display children vertically
                    children: <Widget>[
                    const Padding(
                        padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                        // Text widget to display text with center alignment and appropriate style
                        child: Text(
                        'PBP Shop', // Text indicating the shop name
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                        ),
                        ),
                    ),
                    // Grid layout
                    GridView.count(
                        // Container for our cards.
                        primary: true,
                        padding: const EdgeInsets.all(20),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 3,
                        shrinkWrap: true,
                        children: items.map((ShopItem item) {
                        // Iteration for each item
                        return ShopCard(item);
                        }).toList(),
                    ),
                    ],
                ),
                ),
            ),
            );
        }
    }

    class ShopCard extends StatelessWidget {
    final ShopItem item;

    const ShopCard(this.item, {Key? key}) : super(key: key); // Constructor

    @override
    Widget build(BuildContext context) {
        return Material(
        color: item.color,
        child: InkWell(
            // Responsive touch area
            onTap: () {
            // Show a SnackBar when clicked
            ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(
                    content: Text("You pressed the ${item.name} button!")));
            },
            child: Container(
            // Container to hold Icon and Text
            padding: const EdgeInsets.all(8),
            child: Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Icon(
                    item.icon,
                    color: Colors.white,
                    size: 30.0,
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                    item.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white),
                    ),
                ],
                ),
            ),
            ),
        ),
        );
    }
    }

    class ShopItem {
    final String name;
    final IconData icon;
    final Color color;

    ShopItem(this.name, this.icon, this.color);
    }
    ```

**Bonus: Enhancements for Color Customization**

The `ShopItem` class is expanded to include a `color` field, and the `ShopCard` widget is updated to use this color for its material background. The `items` list in `MyHomePage` is updated to include a specific color for each item.

Adding a color attribute to the `ShopItem` class allows for more flexible and dynamic styling of the `ShopCard` widgets. By passing the color to the `Material` widget in `ShopCard`, each card can be visually distinct, which can improve user interaction and the overall user experience. This customization enhances the visual appeal of the app and allows for a more branded or thematic design approach.

    ```
    // Update items list to include a color for each item
    final List<ShopItem> items = [
        ShopItem("View Items", Icons.checklist, Colors.green),
        ShopItem("Add Item", Icons.add_shopping_cart, Colors.blue),
        ShopItem("Logout", Icons.logout, Colors.red),
    ];
    ```

    ```
    // Update ShopCard to accept and use a color
    class ShopCard extends StatelessWidget {
    final ShopItem item;

    const ShopCard(this.item, {Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Material(
        color: item.color, // Use the color from the item
        // Rest of your ShopCard code...
        );
    }
    }
    ```

    ```
    // Update ShopItem class to include a color
    class ShopItem {
    final String name;
    final IconData icon;
    final Color color; // Add the color property

    ShopItem(this.name, this.icon, this.color); // Update constructor to include color
    }
    ```

</details>

---