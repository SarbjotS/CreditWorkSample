Feature: Do an end to end test

Scenario Outline: E2E and use preexisting manufacturers and categories
Given User is on the home page
Then the user selects the vehicle page button
And the user selects the Add Vehicle button
Then the user inputs "<Owner name>", "<Manufacturer>", "<Year>" and "<Weight>"
Then select the add button
Then verify the vehicle table has the newly added "<Owner name>", "<Manufacturer>", "<Year>" and "<Weight>"
Then user selects the newly created entry and deletes it
Examples:
    | Owner name | Manufacturer | Year | Weight |
    | "Test"     | "Mazda"      | 2014 | 400    |

Scenario: E2E and create a new manufacturer
Given User is on the home page
Then the user selects the manufacturer page button
And the user selects the Add Manufacturer button
Then the user adds a "<Manufacturer>" name
Then select the add button
Then the user selects the vehicle page button
And the user selects the Add Vehicle button
Then the user inputs "<Owner name>", "<Manufacturer>", "<Year>" and "<Weight>"
Then select the add button
Then verify the vehicle table has the newly added "<Owner name>", "<Manufacturer>", "<Year>" and "<Weight>"
Then user selects the newly created entry and deletes it
Then the user selects the manufacturer page button
Then user selects the newly created entry and deletes it
Examples:
    | Owner name | Manufacturer | Year | Weight |
    | Test     | "Kia"          | 2014 | 400    |


Scenario: E2E and create a new category
Given User is on the home page
Then the user selects the category page button
And the user selects the Add Category button
Then the user adds a "<Name>", "<Minimum category weight>" and an icon
Then select the add button
Then the user selects the vehicle page button
And the user selects the Add Vehicle button
Then the user inputs "<Owner name>", "<Manufacturer>", "<Year>" and "<Weight>"
Then select the add button
Then verify the vehicle table has the newly added "<Owner name>", "<Manufacturer>", "<Year>" and "<Weight>"
Then user selects the newly created entry and deletes it
Then the user selects the category page button
Then user selects the newly created entry and deletes it
Examples:
   | Name          | Minimum category weight | Owner name | Manufacturer | Year | Weight | Category name | 
   | "Extra Large" | 3500                   | "Test"     | "Kia"      | 2014 | 400      | Extra Large |



