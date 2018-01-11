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

### Iteration One Wrap up
I finished what appears to be all of the core requirements. There is some things I would like to refactor, and I believe further testing would be good as well. I would also like to implement a Media Model to keep track of the media for the products, however I don't think time will allow. I have added TODO comment where I saw the opportunities to refactor.

## Iteration two
My plan is to implement the popup for the insurance policy, and then add some better styles. Possibly refactor some code if time allows.

# Install
```
> bundle Install
> rake db:migrate
> rake db:seed
> Update the API tokens in the Product Helper
> rails server
```

# TODO
I realize that storing the API Header credentials in a GIT repo is insecure, those would be stored in environment variables on an production server. This was an oversight due to time constraints and due to the pressure.

* refactor and test front-end javascript functionality
* further improve styling
* Create Media Model
* Add code coverage
* pre-commit GIT hook to run test suite
* refactoring URLs and other variables that are constant into config
* create Async Gem for API and remove hard coded JSON data models 

