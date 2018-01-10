# zincplatform
testing the zincplatform API in a Rails 5 project

## Planning Process

* Planning a welcome / products page route at products#index
* Planning a to fetch the insurance quote / option when the product page loads. Include a progress indicator so the user knows the insurance information is loading. If time allows, add checkout with the issuance of an insurance policy for the user's purchase.
* Styling website with Bootstrap 4 using modern elevated card & grid design practices. If time allows, add CSS3 keyframe animations to improve WoW factor.
* Use webmock or VCR to mock the API calls for unit testing
* User rubycritic to control / improve code quality

### Bonus Features
* Include PayPal checkout to increase conversion
* Money back guarantee & hassle free returns to increase conversions
* Fast load times to improve conversions
* Responsive design for mobile consumers
* Video instead of images to improve conversions

## Iteration One
My plan is to create a basic website hosting a single product. The site will cover all core requirements of the challenge with a focus on the core best practices approach as well as all functionality. Once this is completed using TDD, further iterations will be create to add more features to the application and improve styling.

* working on the API section of the functionality, I plan to start by implementing the REST requests in the controller and rendered to a partial in the main product view. Once this is completed, I can refactor into a GEM if time allows.
