# Customer Filtering

This small Ruby on Rails app demonstrates filtering capabilities with a search form.

## User Flow
* The user navigates to /customers/search page to search for a specific name
* The user types text into an input field
* The user clicks 'Submit' or hits 'Enter' on the keyboard to execute a search request
* The system will display, below the text field, a list of customers whose first name and last name matches the text entered
* The system will persist the text in the URL as a query param, so the search results can be shared

## Search Design
1. The results are returned in lexicographical order -- sorted by first name, then last name.
2. If the input is more than 2 words long, the system will use the first word and last word as first and last name, respectively.
3. We have not designed for middle names (see #2 above).
4. If the input is only 1 word long, the system will return results where the first name or last name match the input. E.g. if we have customers named "Joe Jane" and "Jane Doe" in the system, and the search is "Jane", the system will return both those names.
5. If no input is given when search is executed, the system will display all customer names by default.