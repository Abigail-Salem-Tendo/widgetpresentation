
# Flutter Padding Widget Demo

## 1. Project Overview

This project demonstrates how the **Padding widget** works in Flutter by comparing two food order cards: one without padding and one with padding.

The application displays a food order card for Chicken Pilau from Mama's Kitchen, including its price and an "Order now" button.

## 2. Objectives

- Understand what the Padding widget does.
- Compare layouts with and without padding.
- Learn how to use EdgeInsets.all(), EdgeInsets.only(), and EdgeInsets.symmetric().
- Understand how padding improves spacing and readability in a user interface.

## 3. Widgets Used

| Widget | Purpose |
|---|---|
| MaterialApp | Sets up the application and theme. |
| Scaffold | Provides the basic screen structure. |
| AppBar | Displays the application title. |
| SingleChildScrollView | Allows the content to scroll if necessary. |
| Column | Arranges widgets vertically. |
| Row | Arranges widgets horizontally. |
| Card | Groups the food order information into a card. |
| Padding | Adds space around a widget's content. |
| Container | Displays the orange food icon area. |
| Expanded | Allows the content section to use the available horizontal space. |
| EdgeInsets | Defines the amount and direction of padding. |

## 4. Types of Padding Demonstrated

### EdgeInsets.all(12)

Adds 12 logical pixels of padding on all four sides of the card's content.

### EdgeInsets.only(left: 16)

Adds 16 logical pixels of padding only to the left side of the food details.

### EdgeInsets.symmetric(vertical: 6)

Adds 6 logical pixels of padding to both the top and bottom of the price.

## 5. Expected Output

The application displays two food order cards:

- **Without Padding:** The content has little internal spacing and appears crowded.
- **With Padding:** The content has additional space around the card's contents and between the food icon and its details.

This comparison demonstrates how padding helps create a cleaner and more readable layout.

## 6. How to Run the Project

1. Install Flutter and set up your development environment.
2. Open the project in VS Code or Android Studio.
3. Ensure a device or emulator is connected.
4. Run the following commands in the project terminal:

   bash
   flutter pub get
   flutter run
   

## 7. Conclusion

The Padding widget is useful for controlling the space around a widget's content. Using different EdgeInsets constructors makes it possible to add spacing on all sides, selected sides, or pairs of opposite sides.

**Key takeaway:** Padding improves the layout and readability of a Flutter interface without changing the content itself.
