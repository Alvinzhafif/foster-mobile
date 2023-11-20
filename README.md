## What are the main differences between stateless and stateful widgets in Flutter?

<hr>

A stateless widget is a widget that's immutable and completely stateless. This means that the widget does not hold any internal state, whereas the internal state is the data that the widget holds for managing behavior and appearance.<br>
The contrary of a stateless widget is a stateful widget where the widget is dynamic and can hold its internal state from time to time.<br>
The differences between both widgets is as follows:<br>
|       | Stateless Widget  | Stateful Widget |
| ------- | ------------- | ------------- |
|  Internal State | No internal state to maintain |   Can update internal state    |
|  Rebuild | Can't trigger rebuilds |   Can rebuild when state changes   |
|  User Interaction | Doesn't react to user interactions |   Respond to user's interaction |
|  Internal State | No internal state to maintain |   Can update internal state    |
|  Application | Display static content |   Respond to user's input    |

##  Explain all widgets that you used in this assignment
<hr>

#### In `menu.dart` file
##### 1. Scaffold Widget
used for the base structure of the page such as the `AppBar` and the main contents.
##### 2. SingleChildScrollView Widget
used for enabling scroll if the content does not fit the screen.
##### 3. Column and child widgets
used for padding layout and setting the content to be vertical
##### 4. icon,text, and snackbar widgets
used for displaying a text,icon into the cards, and also for showing messages when an event happens.

<br>

#### In `main.dart` file
##### 1. MaterialApp Widget
used for setting the design and specific configuration of the Flutter project
##### 2. ThemeData Widget 
used for defining the overall theme such as the colors and material3 design in my project case
##### 3. MyApp Widget
the root of the application, used as a backbone of the application and also sets the home page
##### 4. MyHomePage Widget
custom widget that represents the main screen of the application


## Explain how you implemented the checklist above step-by-step
<hr>

#### 1. Make an empty folder
first I made an empty folder for where my project is going to be stored, in another word this is also called the `local directory`. Then similar to the first assignment i also initiated and empty git repository by using `git init` in the command terminal.
#### 2. Initialize the Flutter project
After i initialized the empty folder and repo, i head over to the terminal and initialized a new project using `flutter create`. For the app name, i chose `foster-mobile` as it correlates to my previous assignment.
#### 3. Editing and Organizing the project
Now i wanted to change the layout of the project, as the assignment is to show three clickable buttons with a Snackbar for the text that will be displayed when the buttons are clicked. First what I did was create a new file called `menu.dart` inside of the `lib` directory. This file will display the buttons and text of the application later on. Next i removed two class from the `main.dart` file that is already available from the start, which the `MyHomePage` class and the `_MyHomePageState` class. The reason for removing this two classes is that for the buttons and text to be displayed this two class are needed in the other file which is the `menu.dart` which i already initiated previously.
<br>
<br>
Other than those two classes some other classes and methods are not removed. The `runApp` function is not removed, because it will be used for flutter to run the `MyApp` class which is the class where it will return the `MaterialApp` widget. The `MaterialApp` widget is a stateful widget that is used as a root or base for the application, it contains the intial page of the application which is `MyHomePage` and the theme color of indigo. It also uses `material3` which is **Google**'s leading material design system.
<br>
<br>
Next i head back to the `menu.dart` file and changed the `MyHomePage({super.key, required this.title})` line to `MyHomePage({Key? key}) : super(key: key);` in the `MyHomePage` class. This is used as the title is no longer a needed parameter and i want to make it a stateless widget instead of a stateful widget. And add a new method `widget build` with `return scaffold`, this method is used as the foundation for the visual elements such as the buttons that will be added later on. Now i made a new class that will display the cards in the application, it will have the data type string for the name and data type icon for the card display. Next beneath the instance constructor or below this `MyHomePage({Key? key}) : super(key: key);` codeline. i made a final list that will display the buttons into the page, `View Items` with a checklist icon, `Add item` with a shopping cart icon, and `Logout` with a logout icon. Next i fill in the scaffold function, first i make an appbar widget that will be used for the display bar on the top of the page and set the title. Next, i made the body of the `scaffold` to be scrollable when the height exceeds using the `SingleChildScrollView` widget. Next, inside of the padding widget i added a column widget for rearranging the children vertically, then inside of that widget i added a padding widget for laying out the position of the buttons and added the text for the shop's name. 
<br>
<br>
Now to display the card i made a new stateless widgets class named `ShopCard` this widget will be used for displaying the cards. First i initialized the constructor and then made a `widget build` method. Inside i initialized material as the foundation, and then added an `inkwell` widget which is used for adding an effect when clicking the card. Then an `onTap` handler is made for the `inkwell` widget, this on tap will utilize a `SnackBar` that shows a message at the bottom of the page when clicked. And then i made a container for resizing and repositioning the layout and customize the text and icon.

## Explain the difference between Navigator.push() and Navigator.pushReplacement(), accompanied by examples of the correct usage of both methods!
<hr>

`Navigator.push()` is a method used for navigating between screens or pages in a *Flutter App*. This method uses the concept of stack by pushing a new route onto the `Navigator` stack. In other words, it pushes a new page on top of the current page. A great example of using this method is when implementing pages that allow the user to go back to the previous page, such as in an `add_product` page in our assignment example.
<br>
<br>
`Navigator.pushReplacement()` is another method for navigating between screens or pages in a *Flutter App*. The difference it has compared to the previous method is that this method does not push a new route onto the stack. Instead, it replaces the current route in the stack with a new one. It might seem less beneficial compared to `Navigator.push()` however it does have its benefits, such as when we are trying to implement a login page as we do not want to go back to the login page after we log in.

## Explain each layout widget in Flutter and their respective usage contexts!
<hr>

1. *Container*, one of the most common layout widgets. It is mainly used for containing or grouping other widgets such as padding, margin, and decoration. A great feature is that this layout is flexible, it can contain a single child widget or multiple children widgets. Other than that it also supports the Alignment property for aligning text to be centered, right-end, etc.<br> 
2. *Row and Column*, another layout widget that is frequently used. Its main use is for aligning the display of child widgets horizontally by using Row, or vertically by using Column. Other features that it supports is the CrossAxisAlignment and MainAxisAlignment for aligning the children in the cross axis and main axis respectively.<br>
3. *ListView*, a layout that is used for its ability to create a scrollable list of widgets. It's usually implemented when there exists multiple widgets that exceeds the display limit of the App. It also has a feature that can highly increase the performance of the app called `Lazy-Loading`. This feature prioritizes loading only the widgets that are on-demand.<br>
4. *GridView*, another layout used to create a scrollable list of widgets. Difference compared to `ListView` is that it displays the item in a 2 dimesional grid-like format while `ListView` displays it in a vertical format. Since `GridView` also implements 2 dimensional grid format, it also supports scroll bars in two directions both horizontal and vertically.<br>
5. *Stack*, mainly used for stacking widgets on top of each other, one of its features is that the widgets can be positioned relative to the edge or other widgets. A powerful and stunning feature is that widgets in a Stack can overlap, this opens possibilities of creating stunning visual effects, such as overlays, shadows, or even transparent elements, enhancing the overall aesthetics of the interface.<br>
6. *Expanded and Flexible*, used for controlling flexibility of child widgets within a parent widget, It can enhance the app's visual to be more dynamic and responsive. What seperates the use of `Expanded` and `Flexible` is that, `Expanded` is used when the child widget takes all spaces in the main axis while `Flexible` is used when we want more control of the spaces between the children.
7. *SizedBox*  enforce a specific width, height, or both for its child or empty space within a parent widget. It's particularly useful when you need to add explicit dimensions or create space around or between widgets. A case to use it is In scenarios where you want to maintain consistent spacing or dimensions across different screen sizes.

## List the form input elements you used in this assignment and explain why you used these input elements!
<hr>

For this assignment one type of widget is used which is the `TextFormField` along with these elements,<br>
1."Product Name Input", a text input that will be used to display the name of the product/item added to the App.<br>
2."Product Price Input", a text input that will be used for displaying the price of the product/item to the App. The input will then be parsed to make sure it is of a numerical value.<br>
3."Product Description input", a text input that will be used for displaying the description of the product/item to the App.<br>
The reason for implementing `TextFormField` is because for the assignment to retrieve the product correctly i need to input the necessary values into those 3 inputs which will be saved afterwards.

## How is clean architecture implemented in a Flutter application?
<hr>

Clean Architecture is a software design philosophy which involves a separation of concern by splitting files into necessary folders grouped by each of their use specifically, in flutter it usually is a great and nice idea to restructure your project format so it would not make dependency trouble and makes us the developer at ease as we know where each of the code will be located in. In flutter specifically, this will be done in the `/lib` directory which where all our projects dart codes be located in. By using that directory as a container, we can then start organizing each of the files by grouping them to a specific folder according to their uses. Those folder can be `/screens` for codes responsible in page display, `/widgets` for widget files that will be used for making additional style to the display, etc. In conclusion clean architecture is mainly used for reducing dependencies in our app project and provides clarity and easiness to the developer when navigating through the code.

## Explain how you implemented the checklist above step-by-step! (not just following the tutorial)
<hr>

#### 1. Adding a Menu Drawer For Navigation
To ease navigation and increase the aesthetics of the App. I will add a menu drawer that can be toggled to appear and hide again by the click of an icon. To do this first i made a new folder named `widgets/` inside of the `lib/` directory, another reason for making this new directory is for implementing clean architecture. Then inside of that directory add a new file name `left_drawer.dart`, inside of the file first i made a class named `LeftDrawer` that extends the `StatelessWidget` class. Then i made the constructor by calling the `LeftDrawer` class, then using the `super.key` parameter and `const` as the keyword to complete the statement. This will ensure that the constructor will be constant and not changed when the widget is created. Then i added an `@override` annotation for overriding the `build()` method from `StatelessWidget` class. This method will be responsible for creating the `LeftDrawer` widget.
<br>
<br>
Next, inide of the method i added a `return Drawer()`, statements inside of this will be the contents of what the `Drawer()` will be. then i set `ListView` to make sure that the items displayed will be in a list like form and vertically scrollable when the amount of item displayed exceeds the page limit. Then i added a DrawerHeader for the header of the page, the text for the title of my App, and a padding to make sure that the texts are well aligned. Next i added a `ListTile()` widget three times, each of them will be used to navigate to the `Home Page`, `Add Item Page`, and the bonus `View Items Page`. To implement all of this redirects, i used the `Navigator.PushReplacement()` method and pass the constructor of each class to the method.
#### 2. Adding a Form for Adding Items
To make the App look more like a shop i need to make an option to add items. So i made a new file named `shoplist_form.dart` inside of the `lib\` directory, then inside of the directory i added a class named `ShopFormStage` that extends the `StatelessWidget` class. Then, i made the constructor with the same step as the Menu Drawer and by using `@override` i implemented a handler for the `createState()` method of the `StatelessWidget` class. This will be used for making sure that the forms are implemented correctly.
<br>
<br>
Then i made a new class named `_ShopFormPage` this is a parameter mentioned before in the handler, this class will be responsible for creating the form. Then i added the 3 variables and the `Widget build()` method for constructing the form. Then i added the `return Scaffold()` method as previous on the Menu Drawer,add a `Form` body to structure a form, and set the key to `_FormKey` to properly keep track of the form widget. Next as the contents of the form i added three seperate paddings for aligning the input field's spaces, Each paddings will be filled with each of the 3 variables "Item Name", "Price", and "Description". For the input "Price" it will later on be parsed and maked sure that it is a number input. Finally i align all of the input form fields using `Align()`, check the if the form is valid and added the `Ok` button to save the forms. I also save the inputs data, for it to be viewed in the `View Items`.

#### 3. Implementing Clean Architecture
As i have mentioned before, clean architecture is a good etiquette for a developer, This can be implemented by structuring the project files and grouping them each to a folder depending on each of their uses and functionality respectively. In this assignment after the `widgets/` folder, i made one more folder name `screens/` this folder correlates to the display of the pages in which the content will be the `itemform.dart`, `menu.dart`, and ViewItem.dart`. While `widgets/` folder contains the previously made `left_drawer.dart` and `item_card.dart` from the previous assignment. For `main.dart` it can be placed outside of the folders and just kept in `lib/` as it serves as the base foundation of the other files.  '

#### Can we retrieve JSON data without creating a model first? If yes, is it better than creating a model before retrieving JSON data?
<hr>

The answer is yes it is possible to do so. This method is often done when the `JSON` data itself is not well-structured and or when there's no need to perform any sort of transformations to the data itself before using it. Despite that, it is better to create a model before retrieving the `JSON` data. Models can provide a clear and consistent representation of `JSON` data, a Model can also ensure the data type so there won't be any incorrect manipulation of data, And by using a Model the `JSON`'s data can be validated easily, as it will ensure that the data is in the expected format along with its required specifics.

#### Explain the function of CookieRequest and explain why a CookieRequest instance needs to be shared with all components in a Flutter application.
<hr>

A `CookieRequest` in `Flutter` has a unique purpose, it serves as an instance that is responsible for managing cookies that come through `HTTP` requests. It stores the `Cookies` received from the server responses and automatically includes them in other requests to that same domain. A `CookieRequest` must be shared with all components to ensure consistency across the application, by using a single `CookieRequest` all components can make authenticated requests to the same domain, And by passing `CookieRequest` to all components, it can help protect against security vulnerabilities. This can usually come from duplicate data or multiple `Cookies`.

#### Explain the mechanism of fetching data from JSON until it can be displayed on Flutter.
<hr>

There are a few steps for a `Flutter` App to catch `JSON` data. First, they will make an `HTTP` request this can be done by giving the `HTTP` response to the `Dart` code and then it will wait for a response from the `HTTP`. Then for it to be displayed we need to parse the `JSON` data, we could achieve this by adding the line `json.decode` from the `dart:convert` library. Next to display the data we need to model it, this can be achieved by creating a mirror sample data of the `JSON` data, and convert it into `Dart` objects by using the `.fromJson` line. Then finally we can call the variable to display it using ${myData.parameter format.


#### Explain the authentication mechanism from entering account data on Flutter to Django authentication completion and the display of menus on Flutter.
<hr>

To achieve this we can first make the models of the `username` and the `password` that can serve as the mirror data from the login function inside of the `Flutter` App, this will then be mapped to the `Django's` login page. Then in the `Django` project we can make a new login function for the `Flutter` app but now we use a `JSON` data to retrieve the correct displayed message after login. Then in the dart file we make another `widget build` method and use an if statement to verify the login authentication, this can be achieved by using the `CookieRequest` class to send a request to the `django` server. Then it validates the crendetials through the views.py function made in the `Django` project previously. If the login credentials are correct then the `JsonResponse` will return the username and password of the validated user. And once login is succesful then the dart file will redirect the user to the the main `FLutter` page. Then the display of menus will be displayed through the main `Dart` file.

#### List all the widgets you used in this assignment and explain their respective functions.
<hr>

1. in the `detailitem.dart` file

* Scaffold: Provides the basic structure of the screen, including the app bar, a drawer, and the body. The app bar displays the title of the screen and provides a back button. The drawer provides navigation options for the app. The body contains the main content of the screen, which in this case is a card.

* AppBar: Displays the title of the screen, which is "Item Details". It also provides a back button that allows users to navigate back to the previous screen.

* LeftDrawer: Provides a navigation drawer on the left side of the screen. The drawer contains links to other screens in the app.

* Card: Displays a container with rounded corners and a shadow. The card contains the item details, including the item name, price, amount, description, type, and rarity.

* Padding: Adds padding around the child widget. In this case, padding is added around the card to create some space between the card and the edges of the screen.

* Column: Arranges the child widgets vertically. In this case, the child widgets are the item name, price, amount, description, type, and rarity texts.

* Image.network: Displays an image from a URL, which in this case, is the image of the item. The image is displayed above the item name.

* Text: Displays text. The text widgets in this case display the item name, price, amount, description, type, and rarity.

* SizedBox: Adds a fixed amount of vertical space between child widgets. In this case, SizedBox widgets are used to add space between the item details and the floating action button.

* ElevatedButton: Displays a button with a raised shadow. In this case, the button is used to navigate back to the previous screen.

* FloatingActionButton: Displays a floating button with an icon. In this case, the floating button is a back button that allows users to navigate back to the previous screen.

2. in the `itemform.dart` file

* Scaffold: Provides the basic structure of the screen, including the app bar, a drawer, and the body. The app bar displays the title of the screen. The drawer provides navigation options for the app. The body contains the main content of the screen, which in this case is a form.

* AppBar: Displays the title of the screen, which is "Add Item Form".

* LeftDrawer: Provides a navigation drawer on the left side of the screen. The drawer contains links to other screens in the app.

* Form: Validates the form fields and prevents submission if any fields are invalid. The form contains fields for the item name, amount, price, description, type, and rarity.

* SingleChildScrollView: Ensures that the form can scroll if its content exceeds the available screen space. This is important because the form may contain a lot of text, and it is important that users can see all of the content without having to scroll.

* Column: Arranges the child widgets vertically. In this case, the child widgets are the form fields, the save button, and the snack bar.

* Padding: Adds padding around the child widget. In this case, padding is added around the form fields and the save button to create some space between the widgets and the edges of the screen.

* TextFormField: Captures user input and displays a validation message if the input is invalid. The form contains TextFormField fields for the item name, amount, price, description, type, and rarity.

* ElevatedButton: Displays a button with a raised shadow. In this case, the button is used to save the form data.

* SnackBar: Displays a floating message at the bottom of the screen. The snack bar is used to display messages to the user, such as a message indicating that the item has been saved successfully.

* MaterialPageRoute: Represents a route that transitions between pages using a material-style animation. This is used to navigate between screens in the app.
  
3. in the `list_item.dart` file
   
* Scaffold: Provides the basic structure of the screen, including the app bar, a drawer, and the body. The app bar displays the title of the screen. The drawer provides navigation options for the app. The body contains the main content of the screen, which in this case is a form.

* AppBar: Displays the title of the screen, which is "Add Item Form".

* LeftDrawer: Provides a navigation drawer on the left side of the screen. The drawer contains links to other screens in the app.

* FutureBuilder: Displays a progress indicator while data is being fetched from the API. Once the data is fetched, it displays a list of products.

* ListView.builder: Builds a list of widgets based on the data fetched from the API. In this case, it builds a list of `Card` widgets, each of which represents a product.

* Card: Displays a container with rounded corners and a shadow. The card contains information about a product, including its image, name, price, amount, description, type, and rarity.

* GestureDetector: Detects when the user taps on a product card. When the user taps on a card, the Item_Detail_Page is opened, which displays more detailed information about the product.

* Image.asset: Displays an image from the assets folder. In this case, it displays an image named `myimage.png`. which is the picture that I have loaded into the project.

* SizedBox: Adds space between widgets. In this case, it adds space between the image and the product name.

* Expanded: Expands a widget to fill the available space. In this case, it expands the product name and description so that they fill the remaining space in the card.

* ListTile: Displays a list item with a leading icon, a title, and a subtitle. In this case, the leading icon is an image of the product, the title is the product name, and the subtitle is the product price, amount, description, type, and rarity. Which is according to the models i have defined in my previous project

* Text: Displays text. In this case, it displays the product name, price, amount, description, type, and rarity.

4. in the `login.dart` file
   
* Scaffold:	Provides the basic structure of the screen, including the app bar, and body. The app bar displays the title of the screen. The body contains the main content of the screen, which in this case is a login form.

* AppBar: Displays the title of the screen, which is "Add Item Form".

* Container: Provides a way to group widgets and add padding to them. In this case, it groups the login form widgets and adds padding to the entire form.

* Column: Arranges its child widgets vertically. In this case, it arranges the username text field, password text field, and login button vertically.

* TextField: Displays a text field that allows the user to enter text. In this case, there are two text fields, one for the username and one for the password.

* InputDecoration: Customizes the appearance of a TextField. In this case, it sets the label text for the username and password fields.

* SizedBox: Adds space between widgets. In this case, it adds space between the username text field and the password text field, and between the password text field and the login button.

* ElevatedButton: Displays a button with a raised shadow. In this case, the button is used to submit the login form.

* TextButton: Displays a button with a flat appearance. In this case, the text button is used to close the error dialog.

* AlertDialog: Displays a modal dialog with a title, content, and actions. In this case, it is used to display an error message when the login fails.

* Navigator.pushReplacement: Replaces the current screen with a new screen. In this case, it is used to replace the login screen with the home screen after a successful login.

* SnackBar: Displays a floating message at the bottom of the screen. In this case, it is used to display a message welcoming the user after a successful login.

#### Explain how you implement the checklist above step by step!

1.  Create a login page in the Flutter project and Integrate the Django authentication system with the Flutter project.

First i imported the necessary components for the code later on. Then i made a main function to run the LoginApp widget and start the app itself. Next i build a `MaterialApp` widget, which provides the basic structure for the app and also its constructor. The `MaterialApp` widget also has a title property, which sets the title of the app, and a theme property, which sets the theme for the app. The home property specifies the home screen for the app, which in this case is the `LoginPage` widget. Then i made a `LoginPageState` class is the widget for the login page. It has a state property, which is a `_LoginPageState` object. The `_LoginPageState` object itself is will be used for building the UI for the login page.
<br>
Next i went back to my django project, here i made a new folder named `authentication` and initiate is a new app. Then i imported some necessary packages for making the login function for it to be connected to the `Flutter`App. Next, i made a new function for logging in in the `flutter` app. The logic is almost the same with the normal `Django` login function the difference is that for this one i used a Json response for displaying the text messages into the `flutter` app.
<br>
Now i make the `_LoginPageState` class that will be used to construct the forms input field of the username and password and also for validating the input to the backend process which is my django project. First i mirror the data by making two variables for login and made them both `TextEditingController()` this will alow the text to be edited and reformatted later for validation. Next, i added the app bar, and constructed the forms using a `TextField` and passing the variables i made before as the input form's parameter. Then i route my previous django project and call it to the dart app for validation. If the credentials are correct then i reroute the user to the home page by passing the constructor function of the home page. If false then an error message with the respective error will be shown.

2. Create a custom model according to your Django application project.

First, i went over to my django project. Then i retrieve the `Json` data of all my products as sample data, and opened [quicktype](http://app.quicktype.io/). this website will allow me ease on making custom models for making the custom models in the project. After formatting the json data and requested the flutter code i went back over to my `Flutter` app and added a new folder named `models` inside of the `lib` directory. inside of the `models` folder i made a new file named `item.dart` and re-used the code i got from the webpage to make my custom models.

3. 














   

