# Charlie Menu

## Frontend

This is a simple HTML page that displays Charlie, a character with a customizable hat. The hat displayed depends on the JSON data provided. The page also includes a menu that appears and disappears when the user clicks on Charlie.

### Usage

To use the Charlie Menu frontend, follow these steps:

1. Open the `index.html` file in a web browser.
2. The JSON data is hardcoded within the HTML file. If you need to update the JSON data, locate the `<script>` tag in the HTML file and modify the `jsonData` variable with your desired data.
3. The Charlie character wearing the appropriate hat will be displayed. Hover over Charlie to see the hat message. Click on Charlie to show/hide the menu.

### Dependencies

No external dependencies are required to run the frontend code. Simply open the HTML file in a web browser.

## Backend

This is a backend implementation of the Charlie Menu in Ruby. It provides a `CharlieMenu` class that takes in user information and generates a JSON representation of the menu state.

### Prerequisites

To run the backend code, ensure that you have the following prerequisites installed:

- Ruby (version 2.6 or higher)

### Installation

1. Clone this repository or download the backend code files.
2. Navigate to the directory where the backend code is located.

### Usage

To use the Charlie Menu backend, follow these steps:

1. Import the `CharlieMenu` class into your project.
2. Create an instance of the `CharlieMenu` class, passing the user information as a parameter.
3. Call the `to_json` method on the `CharlieMenu` object to obtain the JSON representation of the menu state.

```ruby
require_relative 'charlie_menu'

# Create a user object with relevant information
user = {
  "birthdate" => Date.new(1990, 7, 6),
  "work_anniversary" => Date.new(2010, 4, 15)
}

# Create a CharlieMenu instance
charlie = CharlieMenu.new(user)

# Get the JSON representation of the menu state
menu_json = charlie.to_json

# Use the JSON as needed in your application
puts menu_json

The menu_json variable will contain the JSON representation of the menu state.

Dependencies
The backend code has the following dependencies:

Ruby (version 2.6 or higher)
Please make sure to have these dependencies installed before running the code.

```
