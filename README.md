# assignment_3

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
## Explanation
### Introduction Page (IntroPage)

The `IntroPage` widget serves as the entry point of the app. It displays the app name, an image of sneakers, a brief description, and a "Get Started" button. Tapping the button navigates the user to the menu page (`'/menupage'`).

The code for the `IntroPage` widget is structured as follows:
- It is a StatelessWidget, meaning it doesn't maintain any state.
- The content is scaffolded with a `Scaffold` widget providing basic layout structure.
- The body of the `Scaffold` is constructed using a `LayoutBuilder` to dynamically adjust widget sizes.
- The `IntroPage` contains a title, image, description, and a custom button created using the `MyButton` widget.
### Menu Page (MenuPage)

The `MenuPage` widget serves as a screen where users can view a menu of sneakers available in the shop. It includes a promo banner, a search bar, and a list of sneakers.

#### Promo Banner

- Displays a promotional offer with a discount percentage and a "Use promo" button.
- Utilizes a `Container` with a background color, padding, and a border radius to create a styled banner.
- The promo banner includes text and an image.

#### Search Bar

- Provides a text field for users to search for specific sneakers.
- Styled with rounded corners and a border using `InputDecoration`.
- Positioned horizontally with padding using a `Padding` widget.


### Food Details Page (FoodDetailsPage)

The `FoodDetailsPage` widget represents the screen where users can view details of a specific sneaker and add it to their cart.

#### Sneaker Details

- Displays details of the selected sneaker, including images, rating, name, and description.
- Utilizes a `ListView` to vertically arrange the sneaker details.
- The sneaker image is displayed using the `Image.asset` widget.
- Rating is represented by yellow stars and the rating number.
- The sneaker name is styled using the `GoogleFonts.dmSerifDisplay` font.
- Description provides information about the sneaker's features and design.

#### Quantity Management

- Users can adjust the quantity of the selected sneaker using the plus and minus buttons.
- The quantity count is displayed between the minus and plus buttons.
- The `decrementQuantity` function reduces the quantity count when the minus button is pressed.
- The `incrementQuantity` function increases the quantity count when the plus button is pressed.

#### Add to Cart Functionality

- The `addToCart` function adds the selected sneaker to the user's cart.
- If the quantity count is greater than zero, the selected sneaker is added to the cart using the `Shop` model.
- A success dialog is displayed to inform the user that the sneaker has been successfully added to the cart.
- The dialog includes a "Done" button to close the dialog and return to the previous screen.


### Cart Page (CartPage)

The `CartPage` widget represents the screen where users can view and manage items in their cart and proceed to checkout.

#### Remove From Cart Functionality

- The `removeFromCart` function removes a sneaker from the cart when the delete button is pressed.
- It accesses the `Shop` model using the `context.read<Shop>()` method.
- The selected sneaker is removed from the cart using the `removeFromCart` method defined in the `Shop` model.

#### Cart List

- Displays a list of sneakers currently in the cart.
- Utilizes a `ListView.builder` to dynamically create list items based on the items in the cart.
- Each list item (`ListTile`) contains the sneaker name, price, and a delete button.
- The delete button triggers the `removeFromCart` function to remove the corresponding sneaker from the cart.

#### Total Price Calculation

- Calculates the total price of items in the cart.
- Utilizes the `fold` method to iterate through the cart items and sum their prices.
- Displays the total price at the bottom of the screen.

#### Pay Now Button

- Provides a button for users to proceed to checkout and pay for the items in their cart.
- Styled using the `MyButton` widget with the text "Pay Now".
## WireFrame
![изображение](https://github.com/tonymontana143/sneakerShop/assets/125411745/2728381c-f5d6-4ed9-a1de-dd69da0654ea)

