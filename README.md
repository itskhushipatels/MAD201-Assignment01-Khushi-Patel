# MAD201-ASSIGNMENT01-KhushiPatel

## Lab Title
MAD201 - Cross Platform Mobile App Development  
**Student Name:** Khushi Patel  
**Student ID:** A00198843

## Project Description
This is a Flutter Travel App developed as part of the MAD201 assignment.  
The app demonstrates:

- Dart OOP (classes, inheritance, constructors, methods, null safety)  
- Stateless and Stateful Widgets  
- Layouts and styling using Row, Column, Container, Stack, Flexible, and Expanded  
- Multiple navigation approaches (Navigator, Named Routes, BottomNavigationBar, Drawer)  
- Passing and returning data between screens  
- App-wide state management with a top-level stateful widget  

### Screens & Features
1. **Home Screen**
   - Lists destinations with name, country, and favorite toggle
   - Tap a destination to see details

2. **Details Screen**
   - Shows full info for each destination
   - Buttons to mark as visited or add to favorites

3. **Profile Screen**
   - Displays user info (name, traveler level)
   - Tabs for user info, visited destinations, and statistics

4. **Navigation**
   - BottomNavigationBar: Home, Bookings, Profile  
   - Drawer: Settings, Help (SnackBar), About (static info)  
   - Named Routes for Settings and About screens  

5. **Additional Features**
   - App-wide state updates favorites/visited destinations across screens  
   - Search bar to filter destinations by name or country  
   - Sort destinations by rating, country, or name  
   - Dark mode toggle in Settings  

### Notes
- **Images are not included** in the app to avoid loading and runtime issues. You can add your own image URLs if needed.

### Project Structure
lib/
main.dart
models/
destination.dart
repository.dart
user.dart
screens/
home_screen.dart
details_screen.dart
profile_screen.dart
bookings_screen.dart
settings_screen.dart
about_screen.dart
widgets/
app_drawer.dart

yaml
Copy code

### GitHub Workflow
- At least 5 meaningful commits  
- At least 3 Pull Requests representing logical features/changes  
- Final repository includes all code, proper documentation, and README  

---
