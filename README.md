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

<details>
<summary>Assignment 8: Flutter Navigation, Layouts, Forms, and Input Elements</summary>

## Questions and Answers

### -> Explain the difference between `Navigator.push()` and `Navigator.pushReplacement()`, accompanied by examples of the correct usage of both methods!

navigator.push() : This method is used when you want to move to a new screen while maintaining the current screen in the navigation stack. In other words, the previous screen is not eliminated when you navigate to the new one. It resembles adding a new page on top of the ones that already exist. Using {Navigator.push()} allows you to utilize the back button to go back to the previous screen.

Example Usage of Navigator.push() : Imagine you have a product list on your app. You want to display the product details on a new screen when a user taps on one of the products. Since the user may want to return to the list of items after seeing the information, you would use `Navigator.push()` in this case.

    ```
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProductDetailsScreen()),
    );
    ```

Navigator.pushReplacement() : If you want to change to a different screen without remaining the current screen in the browser stack, you can use this technique. The new screen essentially takes the place of the old one. When you want the user to stay on the current screen but not go back, this is helpful.

Example Usage of Navigator.pushReplacement() : An example of this usually happens in a login flow. A user is able to access the app's home screen after successfully logging in. Returning to the login screen once logged in is not logical, thus in this case, you would use `Navigator.pushReplacement().

    ```
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
    );
    ```

In short up, if the user needs to return to the previous screen, utilize {Navigator.push()`. If you want to completely replace the current screen and keep the user from returning to it, use {Navigator.pushReplacement().

---

### -> Explain each layout widget in Flutter and their respective usage contexts!

•	Container: This widget has a lot of flexibility. I use it anytime I have to make a box with a certain border, background color, width, or height. It works well for aligning its child widget and adding margin and padding. If you're familiar with web development, it's similar to an HTML div.
•	Row and Column: For both horizontal (row) and vertical (column) linear layouts, row and column are the essential elements. For example, I use Rows to arrange icons on a toolbar or other widgets side by side. I can place widgets on top of each other, such as form fields in a login screen, with the help of columns. In CSS, they are comparable to flexbox.
•	Stack: For overlaying widgets on top of one other, this widget is great. I frequently use it to create complex user interfaces (UIs) with floating buttons or to overlay text on photos.
•	GridView: GridView is my go-to widget when I need to create a grid layout, such as a gallery or a grid of choices. It is quite helpful for showing objects in a structured format because it automatically puts its child widgets into a grid.
•	ListView: For creating scrolling lists, this is ideal. For stuff like chat interfaces, to-do lists, or settings menus, I use it all the time. It works well with extensive lists of items and can handle lists that are both vertical and horizontal.
•	Padding and Allign: I use padding to add space around a widget, and align works well for lining up a child widget inside of its parent. They are straightforward but quite helpful for adjusting the setup.
•	Flex and Expanded: Expanded widgets within Rows and Columns split the free space among their children. Flex is used to create flexible layouts. For example, I can make a button expand to fill the screen's width by using Expanded to make a widget occupy all available space.
•	Wrap: This is a useful but unfamiliar widget. It immediately wraps its progeny to the next line when they take up more space than is available. It works really well for making a set of buttons that need to wrap on small screens, or for making a tag system.
•	SizedBox: SizedBox is an ideal solution for me anytime I need to specify an exact size for a widget or create space between them. It can be used to make spaces in a layout, much like a spacer.

---

### -> List the form input elements you used in this assignment and explain why you used these input elements!


In this project, the TextFormField widget is utilized as the primary input element. This widget is chosen for its versatility in allowing users to enter any type of text. It's equipped with a TextEditingController, which aids in managing the text being input. The significance of TextFormField lies in its capability to not only gather input like names, amounts, and product descriptions but also to enforce data validity through built-in validation features. This ensures that the information provided by the users adheres to the specified requirements, thereby maintaining the integrity and structure of the data collected.

---

### -> How is clean architecture implemented in a Flutter application?

Coding a Flutter application with a clean, modular, and easily maintainable code structure is known as clean architecture. I'd handle it by separating the code into three layers which are: (1). Presentation Layer/UI, in the `presentation` folder, I design my Flutter widgets. These are responsible for displaying the user interface. I try to keep them simple, handling only UI-related tasks. (2) Domain Layer, I create the `domain` folder for the core business logic. This is where I define entities and business rules that are independent of any framework. It's the heart of the application. (3) Data Sources, I implement data sources like databases or APIs in the `application` layer. In order to maintain the independence and testability of the core business logic, repositories in this layer interface with these data sources.

---

### -> Explain how you implemented the checklist above step-by-step! (not just following the tutorial)

1. **Create widgets and screen from Lab**

    menu.dart

    ``` 
    import 'package:flutter/material.dart';
    import 'package:inventory_list/widgets/left_drawer.dart';
    import 'package:inventory_list/widgets/shop_card.dart';

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
            drawer: const LeftDrawer(),
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

    ```

    shoplist_form.dart

    ```
    import 'package:flutter/material.dart';
    import 'package:inventory_list/widgets/left_drawer.dart';

    class ShopFormPage extends StatefulWidget {
        const ShopFormPage({super.key});

        @override
        State<ShopFormPage> createState() => _ShopFormPageState();
    }

    class _ShopFormPageState extends State<ShopFormPage> {
        final _formKey = GlobalKey<FormState>();
        String _name = "";
        int _price = 0;
        String _description = "";
        int _amount = 0;

        @override
        Widget build(BuildContext context) {
            return Scaffold(
            appBar: AppBar(
                title: const Center(
                child: Text(
                    'Add Item Form',
                ),
                ),
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
            ),
            // Adding the previously created drawer here
            drawer: const LeftDrawer(),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Product Name",
                            labelText: "Product Name",
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            ),
                        ),
                        onChanged: (String? value) {
                            setState(() {
                            _name = value!;
                            });
                        },
                        onSaved: (String? value) {
                            setState(() {
                            _name = value!;
                            });
                        },
                        validator: (String? value) {
                            if (value == null || value.isEmpty) {
                            return "Name cannot be empty!";
                            }
                            return null;
                        },
                        ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Amount",
                            labelText: "Amount",
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            ),
                        ),
                        onChanged: (String? value) {
                            setState(() {
                            _amount = int.tryParse(value!) ?? _amount;
                            });
                        },
                        onSaved: (String? value) {
                            setState(() {
                            _amount = int.tryParse(value!) ?? _amount;
                            });
                        },
                        validator: (String? value) {
                            if (value == null || value.isEmpty) {
                            return "Amount cannot be empty!";
                            }
                            if (int.tryParse(value) == null) {
                            return "Amount must be a number!";
                            }
                            return null;
                        },
                        ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Price",
                            labelText: "Price",
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            ),
                        ),
                        onChanged: (String? value) {
                            setState(() {
                            _price = int.tryParse(value!) ?? _price;
                            });
                        },
                        onSaved: (String? value) {
                            setState(() {
                            _price = int.tryParse(value!) ?? _price;
                            });
                        },
                        validator: (String? value) {
                            if (value == null || value.isEmpty) {
                            return "Price cannot be empty!";
                            }
                            if (int.tryParse(value) == null) {
                            return "Price must be a number!";
                            }
                            return null;
                        },
                        ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Description",
                            labelText: "Description",
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            ),
                        ),
                        onChanged: (String? value) {
                            setState(() {
                            _description = value!;
                            });
                        },
                        onSaved: (String? value) {
                            setState(() {
                            _description = value!;
                            });
                        },
                        validator: (String? value) {
                            if (value == null || value.isEmpty) {
                            return "Description cannot be empty!";
                            }
                            return null;
                        },
                        ),
                    ),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.indigo),
                            ),
                            onPressed: () {
                            if (_formKey.currentState!.validate()) {
                                showDialog(
                                context: context,
                                builder: (context) {
                                    return AlertDialog(
                                    title: const Text('Product successfully saved'),
                                    content: SingleChildScrollView(
                                        child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                            // Display other values here
                                            Text('Name: $_name'),
                                            Text('Amount: $_amount'),
                                            Text('Price: $_price'),
                                            Text('Description: $_description')
                                        ],
                                        ),
                                    ),
                                    actions: [
                                        TextButton(
                                        child: const Text('OK'),
                                        onPressed: () {
                                            Navigator.pop(context);
                                        },
                                        ),
                                    ],
                                    );
                                },
                                );
                            // Reset the form after the dialog is displayed
                            _formKey.currentState!.reset();
                            }
                            },
                            child: const Text(
                            "Save",
                            style: TextStyle(color: Colors.white),
                            ),
                        ),
                        ),
                    ),
                    ]
                ),
                ),
            ),
            );
        }
    }

    ```

    left_drawer

    ```
    import 'package:flutter/material.dart';
    import 'package:inventory_list/screens/menu.dart';
    import 'package:inventory_list/screens/shoplist_form.dart';

    class LeftDrawer extends StatelessWidget {
    const LeftDrawer({super.key});

    @override
    Widget build(BuildContext context) {
        return Drawer(
        child: ListView(
            children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                color: Colors.indigo,
                ),
                child: Column(
                children: [
                    Text(
                    'Inventory List',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                    ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Text("Write all your shopping needs here!",
                        // Adding text style with center alignment, font size 15, white color, and regular weight
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                    ),
                    textAlign: TextAlign.center,
                    ),
                ],
                ),
            ),
            ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text('Home Page'),
                // Redirection to MyHomePage
                onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                    ));
                },
            ),
            ListTile(
                leading: const Icon(Icons.add_shopping_cart),
                title: const Text('Add Item'),
                // Redirection to ShopFormPage
                onTap: () {
                // Routing to ShopFormPage here, after ShopFormPage has been created.
                Navigator.pushReplacement(
                    context, 
                    MaterialPageRoute(builder: (context) => const ShopFormPage())
                );
                },
            ),
            ],
        ),
        );
    }
    }

    ```

    shop_card.dart

    ```
    import 'package:flutter/material.dart';
    import 'package:inventory_list/screens/shoplist_form.dart';

    // Updated ShopItem class with color attribute
    class ShopItem {
    final String name;
    final IconData icon;
    final Color color; // New color attribute

    ShopItem(this.name, this.icon, this.color); // Constructor includes color
    }

    // ShopCard widget to display each item as a card
    class ShopCard extends StatelessWidget {
    final ShopItem item;

    const ShopCard(this.item, {super.key}); // Constructor

    @override
    Widget build(BuildContext context) {
        return Material(
        color: item.color, // Use color from the item
        child: InkWell(
            onTap: () {
            ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(
                    content: Text("You pressed the ${item.name} button!")));

            if (item.name == "Add Item") {
                Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ShopFormPage(),
                ),
                );
            }
            },
            child: Container(
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

    // Main widget or any other part of your application where you use the ShopCard
    class YourMainWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        // List of ShopItem objects with different colors
        final List<ShopItem> items = [
        ShopItem("View Items", Icons.checklist, Colors.green),
        ShopItem("Add Item", Icons.add_shopping_cart, Colors.blue),
        ShopItem("Logout", Icons.logout, Colors.red),
        ];

        return Scaffold(
        appBar: AppBar(
            title: Text("Inventory List"),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
            return ShopCard(items[index]);
            },
        ),
        );
    }
    }


    ```

</details>

---

<details>
<summary>Assignment 9: Integrating Django Web Service with Flutter Application</summary>

## Questions and Answers

### -> Can we retrieve JSON data without creating a model first? If yes, is it better than creating a model before retrieving JSON data?

Yes, it's possible to retrieve JSON data without creating a model first. However, having a model in place before fetching JSON data is generally considered a better approach. The reason is that a model helps in ensuring data type consistency and adds a layer of structure to your data handling. It makes your code more readable, maintainable, and less prone to errors, as you have predefined structures to work with. In summary, while you can work without a model, using one typically leads to cleaner and more reliable code.

---

### -> Explain the function of CookieRequest and explain why a CookieRequest instance needs to be shared with all components in a Flutter application.

The `CookieRequest` class in Flutter is designed to manage cookie transactions, primarily for retrieving cookies from a server. In a Flutter application, sharing a `CookieRequest` instance across all components is crucial for maintaining consistent state management. This is particularly important in scenarios like staying logged in when navigating across different screens. By sharing the `CookieRequest`, cookies provided by a backend (like a Django web application) are consistently accessible throughout the application, ensuring seamless user experience and persistent state across various components. This approach is essential for features that rely on user sessions or other stateful interactions.

---

### -> Explain the mechanism of fetching data from JSON until it can be displayed on Flutter.


To fetch and display JSON data in Flutter, the process involves several key steps. Firstly, we create a model class that represents the structure of the data we're aiming to fetch. This model acts as a blueprint for how the data will be structured in our app. Next, we use the `http` library to actually fetch the data from the server. Once the data is retrieved, the `dart:convert` library comes into play to parse the JSON data. After parsing, the data is populated into the previously defined model. This organized data can then be displayed in the Flutter app through a widget. This structured approach ensures that the data is handled efficiently and displayed accurately in our application.

---

### -> Explain the authentication mechanism from entering account data on Flutter to Django authentication completion and the display of menus on Flutter.

In a Flutter application integrating with Django for authentication, the process begins with the creation of a login page in Flutter. This is where users enter their account data. Once the login details are submitted, a login service in Flutter, typically using `pbp_django_auth` or a similar mechanism, sends a request to the Django server. The Django server, having a login view set up, processes this request. Upon successful authentication, Django sends back a response, often including cookies or a token, which Flutter then uses to maintain the user's session. Once the user is authenticated and the session is established with the cookies or token, the Flutter app can proceed to display user-specific menus and content. This process ensures a seamless and secure transition from user login to accessing authenticated features in the app.

---

### -> List all the widgets you used in this assignment and explain their respective functions.

In this assignment, several key Flutter widgets i utilized, each serving a distinct function:

    - `FutureBuilder`: This widget is crucial for building UI elements based on the state of asynchronous operations. It takes a Future and an AsyncWidgetBuilder, updating the UI based on the Future's state.

    - `ListView`: Used for displaying its children in a scrollable list layout. It's versatile for presenting a series of elements, like items in a list.

    - `GestureDetector`: This widget is essential for detecting and responding to gestures on its child widget. It makes elements interactive, responding to user inputs like taps, swipes, and more.

    - `TextFormField`: A widget designed for text input, typically accompanied by a TextEditingController. It's commonly used for forms, allowing users to enter data.

    - `ElevatedButton`: This widget creates a button with an elevation (shadow). It's used for actions like submitting a form or navigating to a different screen.

    - `Container`: A highly versatile widget for containing other widgets, often used for styling purposes like padding, alignment, and decoration.

---

### -> Explain how you implement the checklist above step by step! (not just following the tutorial).

1. **Creating Authentication**

In this phase of the project, I've developed a `login.dart` file, which is located in the screens folder for the Flutter application. Additionally, I've set up an authentication app within the Django project, with the necessary logic implemented in the `views.py` file. To integrate this new app smoothly into the overall project, I've also updated the routing configurations in the main project folder. This ensures that the new authentication functionality is properly linked and accessible within the project's structure.

login.dart

    ```
    import 'package:inventory_list/screens/menu.dart';
    import 'package:flutter/material.dart';
    import 'package:pbp_django_auth/pbp_django_auth.dart';
    import 'package:provider/provider.dart';

    void main() {
        runApp(const LoginApp());
    }

    class LoginApp extends StatelessWidget {
    const LoginApp({super.key});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Login',
            theme: ThemeData(
                primarySwatch: Colors.blue,
        ),
        home: const LoginPage(),
        );
        }
    }

    class LoginPage extends StatefulWidget {
        const LoginPage({super.key});

        @override
        _LoginPageState createState() => _LoginPageState();
    }

    class _LoginPageState extends State<LoginPage> {
        final TextEditingController _usernameController = TextEditingController();
        final TextEditingController _passwordController = TextEditingController();

        @override
        Widget build(BuildContext context) {
            final request = context.watch<CookieRequest>();
            return Scaffold(
                appBar: AppBar(
                    title: const Text('Login'),
                ),
                body: Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            TextField(
                                controller: _usernameController,
                                decoration: const InputDecoration(
                                    labelText: 'Username',
                                ),
                            ),
                            const SizedBox(height: 12.0),
                            TextField(
                                controller: _passwordController,
                                decoration: const InputDecoration(
                                    labelText: 'Password',
                                ),
                                obscureText: true,
                            ),
                            const SizedBox(height: 24.0),
                            ElevatedButton(
                                onPressed: () async {
                                    String username = _usernameController.text;
                                    String password = _passwordController.text;

                                    // Check credentials
                                    // TODO: Change the URL and don't forget to add a trailing slash (/) at the end of the URL!
                                    // To connect the Android emulator to Django on localhost,
                                    // use the URL http://10.0.2.2/
                                    final response = await request.login("http://127.0.0.1:8000/auth/login/", {
                                    'username': username,
                                    'password': password,
                                    });

                                    if (request.loggedIn) {
                                        String message = response['message'];
                                        String uname = response['username'];
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(builder: (context) => MyHomePage()),
                                        );
                                        ScaffoldMessenger.of(context)
                                            ..hideCurrentSnackBar()
                                            ..showSnackBar(
                                                SnackBar(content: Text("$message Welcome, $uname.")));
                                        } else {
                                        showDialog(
                                            context: context,
                                            builder: (context) => AlertDialog(
                                                title: const Text('Login Failed'),
                                                content:
                                                    Text(response['message']),
                                                actions: [
                                                    TextButton(
                                                        child: const Text('OK'),
                                                        onPressed: () {
                                                            Navigator.pop(context);
                                                        },
                                                    ),
                                                ],
                                            ),
                                        );
                                    }
                                },
                                child: const Text('Login'),
                            ),
                        ],
                    ),
                ),
            );
        }
    }
    ```

views.py

    ```
    from django.shortcuts import render
    import datetime
    from django.http import HttpResponseRedirect,HttpResponseNotFound
    from django.urls import reverse
    from main.forms import ProductForm
    from main.models import Product
    from django.http import HttpResponse
    from django.core import serializers
    from django.shortcuts import redirect
    from django.contrib.auth.forms import UserCreationForm
    from django.contrib import messages
    from django.contrib.auth import authenticate, login,logout
    from django.contrib.auth.decorators import login_required
    from django.views.decorators.csrf import csrf_exempt
    from django.http import JsonResponse
    import json


    # Create your views here.
    @login_required(login_url='/login')
    def show_main(request):
        products = Product.objects.filter(user=request.user)
        if request.method == 'POST':
            if 'increment' in request.POST:
                product_id = request.POST.get('increment')
                product = products.get(id=product_id)
                product.amount += 1
                product.save()
                return HttpResponseRedirect(reverse('main:show_main'))
            elif 'decrement' in request.POST:
                product_id = request.POST.get('decrement')
            
                return HttpResponseRedirect(reverse('main:show_main'))
            elif 'delete' in request.POST:
                product_id = request.POST.get('delete')
                

        counter = products.count()

        context = {
            'app_name':'Inventory List',
            'name': request.user.username,
            'class': 'PBP KKI',
            'products': products,
            'counter' : counter,
            'last_login': request.COOKIES.get('last_login', ''),
                }

        return render(request, 'main.html', context)

    def create_product(request):
        form = ProductForm(request.POST or None)

        if form.is_valid() and request.method == "POST":
            product = form.save(commit=False)
            product.user = request.user
            product.save()
            return HttpResponseRedirect(reverse('main:show_main'))
        
        context = {'form': form}
        return render(request, "create_product.html", context)

    def show_xml(request):
        data = Product.objects.all()
        return HttpResponse(serializers.serialize("xml", data), content_type="application/xml")

    def show_json(request):
        data = Product.objects.all()
        return HttpResponse(serializers.serialize("json", data), content_type="application/json")

    def show_xml_by_id(request, id):
        data = Product.objects.filter(pk=id)
        return HttpResponse(serializers.serialize("xml", data), content_type="application/xml")

    def show_json_by_id(request, id):
        data = Product.objects.filter(pk=id)
        return HttpResponse(serializers.serialize("json", data), content_type="application/json")

    def register(request):
        form = UserCreationForm()

        if request.method == "POST":
            form = UserCreationForm(request.POST)
            if form.is_valid():
                form.save()
                messages.success(request, 'Your account has been successfully created!')
                return redirect('main:login')
        context = {'form':form}
        return render(request, 'register.html', context)

    def login_user(request):
        if request.method == 'POST':
            username = request.POST.get('username')
            password = request.POST.get('password')
            user = authenticate(request, username=username, password=password)
            if user is not None:
                login(request, user)
                response = HttpResponseRedirect(reverse("main:show_main")) 
                response.set_cookie('last_login', str(datetime.datetime.now()))
                return response
            else:
                messages.info(request, 'Sorry, incorrect username or password. Please try again.')
        context = {}
        return render(request, 'login.html', context)

    def logout_user(request):
        logout(request)
        response = HttpResponseRedirect(reverse('main:login'))
        response.delete_cookie('last_login')
        return response

    def edit_product(request, id):
        # Get product by ID
        product = Product.objects.get(pk = id)

        # Set product as instance of form
        form = ProductForm(request.POST or None, instance=product)

        if form.is_valid() and request.method == "POST":
            # Save the form and return to home page
            form.save()
            return HttpResponseRedirect(reverse('main:show_main'))

        context = {'form': form}
        return render(request, 'edit_product.html', context)

    def get_product_json(request):
        product_item = Product.objects.filter(user=request.user)
        return HttpResponse(serializers.serialize('json', product_item))

    @csrf_exempt
    def add_product_ajax(request):
        if request.method == 'POST':
            name = request.POST.get("name")
            amount = request.POST.get("amount")
            price = request.POST.get("price")
            dateAdded = request.POST.get("date_added")
            description = request.POST.get("description")
            user = request.user

            new_product = Product(name=name, amount = amount, date_added = dateAdded,price=price, description=description, user=user)
            new_product.save()

            return HttpResponse(b"CREATED", status=201)

        return HttpResponseNotFound()

    def delete_product(request, id):
        product = Product.objects.get(pk = id)
        product.delete()
        return HttpResponseRedirect(reverse('main:show_main'))

    def decrement_product(request, id):
        product = Product.objects.get(id = id)
        product.amount -= 1
        product.save()
        return HttpResponseRedirect(reverse('main:show_main'))

    def increment_product(request, id):
        product = Product.objects.get(id = id)
        product.amount += 1
        product.save()
        return HttpResponseRedirect(reverse('main:show_main'))

    @csrf_exempt
    def create_product_flutter(request):
        if request.method == 'POST':
            
            data = json.loads(request.body)

            new_product = Product.objects.create(
                user = request.user,
                name = data["name"],
                amount = int(data["amount"]),
                price = int(data["price"]),
                description = data["description"]
            )

            new_product.save()

            return JsonResponse({"status": "success"}, status=200)
        else:
            return JsonResponse({"status": "error"}, status=401)
    ```

urls.py

    ```
    from django.urls import path
    from authentication.views import login, logout

    app_name = 'authentication'

    urlpatterns = [
        path('login/', login, name='login'),
        path('logout/', logout, name='logout'),
    ]
    ```
2. **Customizing the Model**

To customize the model, I first set up a new file named product.dart in a newly created 'model' folder. Once this was in place, I launched the Django server to ensure it was functioning properly. Next, I accessed the specific JSON path on my local server. The crucial step was copying the JSON code from there and using QuickType to process it efficiently. After processing, I took the generated code and pasted it back into the product.dart file, seamlessly integrating it into the project.

product.dart

    ```
    // To parse this JSON data, do
    //
    //     final product = productFromJson(jsonString);

    import 'dart:convert';

    List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

    String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

    class Product {
        String model;
        int pk;
        Fields fields;

        Product({
            required this.model,
            required this.pk,
            required this.fields,
        });

        factory Product.fromJson(Map<String, dynamic> json) => Product(
            model: json["model"],
            pk: json["pk"],
            fields: Fields.fromJson(json["fields"]),
        );

        Map<String, dynamic> toJson() => {
            "model": model,
            "pk": pk,
            "fields": fields.toJson(),
        };
    }

    class Fields {
        String name;
        int amount;
        int price;
        String description;
        DateTime dateAdded;
        int user;

        Fields({
            required this.name,
            required this.amount,
            required this.price,
            required this.description,
            required this.dateAdded,
            required this.user,
        });

        factory Fields.fromJson(Map<String, dynamic> json) => Fields(
            name: json["name"],
            amount: json["amount"],
            price: json["price"],
            description: json["description"],
            dateAdded: DateTime.parse(json["date_added"]),
            user: json["user"],
        );

        Map<String, dynamic> toJson() => {
            "name": name,
            "amount": amount,
            "price": price,
            "description": description,
            "date_added": dateAdded.toIso8601String(),
            "user": user,
        };
    }

    ```

3. **Creating View Product Screen**


To progress with the project, I moved shoplist_form.dart to the screens folder and modify it. Following this, I updated the Django main app by adding specific code to the views.py file. This integration helps in enhancing the functionality and structure of the application.


shoplist_form.dart

    ```
    import 'package:flutter/material.dart';
    import 'package:http/http.dart' as http;
    import 'dart:convert';
    import 'package:inventory_list/models/product.dart';
    import 'package:inventory_list/widgets/left_drawer.dart';
    import 'package:inventory_list/screens/productdetail.dart';

    class ProductPage extends StatefulWidget {
        const ProductPage({Key? key}) : super(key: key);

        @override
        _ProductPageState createState() => _ProductPageState();
    }

    class _ProductPageState extends State<ProductPage> {
    Future<List<Product>> fetchProduct() async {
        // TODO: Change the URL to your Django app's URL. Don't forget to add the trailing slash (/) if needed.
        var url = Uri.parse(
            'http://127.0.0.1:8000/json/');
        var response = await http.get(
            url,
            headers: {"Content-Type": "application/json"},
        );

        // decode the response to JSON
        var data = jsonDecode(utf8.decode(response.bodyBytes));

        // convert the JSON to Product object
        List<Product> list_product = [];
        for (var d in data) {
            if (d != null) {
                list_product.add(Product.fromJson(d));
            }
        }
        return list_product;
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
            title: const Text('Product'),
            ),
            drawer: const LeftDrawer(),
            body: FutureBuilder(
                future: fetchProduct(),
                builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.data == null) {
                        return const Center(child: CircularProgressIndicator());
                    } else {
                        if (!snapshot.hasData) {
                        return const Column(
                            children: [
                            Text(
                                "No product data available.",
                                style:
                                    TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                            ),
                            SizedBox(height: 8),
                            ],
                        );
                    } else {
                        return ListView.builder(
                            itemCount: snapshot.data!.length,
                            itemBuilder: (_, index) => InkWell(
                            onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailPage(
                                            product: snapshot.data![index])));
                            },
                        child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 12),
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Text(
                                        "${snapshot.data![index].fields.name}",
                                        style: const TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                        ),
                                        ),
                                        const SizedBox(height: 10),
                                        Text("${snapshot.data![index].fields.price}"),
                                        const SizedBox(height: 10),
                                        Text("${snapshot.data![index].fields.amount}"),
                                        const SizedBox(height: 10),
                                        Text(
                                            "${snapshot.data![index].fields.description}")
                                    ],
                                    ),
                                )));
        
                        }
                    }
                }));
        }
    }
    ```

    ```
        @csrf_exempt
        def create_product_flutter(request):
            if request.method == 'POST':
                
                data = json.loads(request.body)

                new_product = Product.objects.create(
                    user = request.user,
                    name = data["name"],
                    amount = int(data["amount"]),
                    category = data["category"],
                    description = data["description"]
                )

                new_product.save()

                return JsonResponse({"status": "success"}, status=200)
            else:
                return JsonResponse({"status": "error"}, status=401)
    ```

4 **Create Product Detail Screen**

productdetail.dart

    ```
    import 'package:flutter/material.dart';
    import 'package:inventory_list/models/product.dart';
    import 'package:inventory_list/widgets/left_drawer.dart';

    class DetailPage extends StatelessWidget {
    final Product product;

    const DetailPage({Key? key, required this.product}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: const Text('Details'),
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
        ),
        drawer: const LeftDrawer(),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text(
                product.fields.name,
                style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                ),
                ),
                const SizedBox(height: 20),
                Text("Amount:\n${product.fields.amount}"),
                const SizedBox(height: 20),
                Text("Price:\n${product.fields.price}"),
                const SizedBox(height: 20),
                Text("Description:\n${product.fields.description}"),
                const SizedBox(height: 20),
                ElevatedButton(
                onPressed: () {
                    Navigator.pop(context); // Navigate back to the item list page
                },
                child: const Text('Back to Item List'),
                ),
            ],
            ),
        ),
        );
    }
    }
    ```

list_product.dart

    ```
    import 'package:flutter/material.dart';
    import 'package:http/http.dart' as http;
    import 'dart:convert';
    import 'package:inventory_list/models/product.dart';
    import 'package:inventory_list/widgets/left_drawer.dart';
    import 'package:inventory_list/screens/productdetail.dart';

    class ProductPage extends StatefulWidget {
        const ProductPage({Key? key}) : super(key: key);

        @override
        _ProductPageState createState() => _ProductPageState();
    }

    class _ProductPageState extends State<ProductPage> {
    Future<List<Product>> fetchProduct() async {
        // TODO: Change the URL to your Django app's URL. Don't forget to add the trailing slash (/) if needed.
        var url = Uri.parse(
            'http://127.0.0.1:8000/json/');
        var response = await http.get(
            url,
            headers: {"Content-Type": "application/json"},
        );

        // decode the response to JSON
        var data = jsonDecode(utf8.decode(response.bodyBytes));

        // convert the JSON to Product object
        List<Product> list_product = [];
        for (var d in data) {
            if (d != null) {
                list_product.add(Product.fromJson(d));
            }
        }
        return list_product;
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
            title: const Text('Product'),
            ),
            drawer: const LeftDrawer(),
            body: FutureBuilder(
                future: fetchProduct(),
                builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.data == null) {
                        return const Center(child: CircularProgressIndicator());
                    } else {
                        if (!snapshot.hasData) {
                        return const Column(
                            children: [
                            Text(
                                "No product data available.",
                                style:
                                    TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                            ),
                            SizedBox(height: 8),
                            ],
                        );
                    } else {
                        return ListView.builder(
                            itemCount: snapshot.data!.length,
                            itemBuilder: (_, index) => InkWell(
                            onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailPage(
                                            product: snapshot.data![index])));
                            },
                        child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 12),
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Text(
                                        "${snapshot.data![index].fields.name}",
                                        style: const TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                        ),
                                        ),
                                        const SizedBox(height: 10),
                                        Text("${snapshot.data![index].fields.price}"),
                                        const SizedBox(height: 10),
                                        Text("${snapshot.data![index].fields.amount}"),
                                        const SizedBox(height: 10),
                                        Text(
                                            "${snapshot.data![index].fields.description}")
                                    ],
                                    ),
                                )));
        
                        }
                    }
                }));
        }
    }
    ```




</details>

---