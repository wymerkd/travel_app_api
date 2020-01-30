# _Travel API Front-End_

#### _An API which contains all of a users travel blog posts, 1/30/2020_

#### By _**Kyle Wymer and Marcus Jensen**_

## Description

_This is an API which holds all of a users Travel Blog Posts. A user is welcome to interact with our API by using a service like Postman, or by using the front end app we built linked below._

## Specifications

* _Holds all of a users travel blog posts. Users are able to Create, Read, Edit, and Delete blog posts through interacting with our frontend application_


## Setup/Installation Requirements
* _Clone or download the repository from GitHub_
* _Navigate to the root directory of the cloned repository via terminal_
* _In the terminal, run $ bundle install_
* _To recreate the database, run $ rake db:create, followed by rake db:migrate_
* _run: rails s -p 3000 in the terminal_



* _In order to get your access token, follow the steps below:_
    * _in root directory, run 'rails c' in the terminal_
    * _in root directory, run 'rails c' in the terminal_
    * _Create a user by entering the following into the terminal: User.create!(email: 'youremail@mail.com' , password: 'examplepassword' , password_confirmation: 'examplepassword')_
    * _Navigate back to root directory, run the following command: rails g scaffold Item name:string description:text_
    * _Run 'rails db:migrate' in the root directory_
    * _Run this command to receive your auth token: curl -H "Content-Type: application/json" -X POST -d '{"email":"youremail@mail.com","password":"examplepassword"}' http://localhost:3000/authenticate_
    * _Your auth token should come back in this format: {"auth_token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE0NjA2NTgxODZ9.xsSwcPC22IR71OBv6bU_OGCSyfE89DvEzWfDU0iybMA"}_

    * _You can use this token within a service like Postman (input into the Bearer Token field in Authorization section), or within the frontend app_

* _Once you have received the token from the API, do the following:_
* _Navigate to app/models/review.rb_
* _Place your token in: self.headers['Authorization'] = 'your-token'_
* _To connect to the server run $ rails s -p 3001_
* _In your browser connect to localhost:3001_

## Known Bugs

_The tests were passing before we added authentication. In the future we will rewrite the tests to accommodate this change_

## Support and contact details

_Please contact Kyle Wymer, at wymerkd@gmail.com if support is needed_

## Technologies Used

* _Ruby_
* _Rails_
* _Gemfile_
* _SQL_
* _Bcrypt (authentication)_


## Helpful Resources
<!-- Active::Resource  -->
* _https://api.rubyonrails.org/v3.1/classes/ActiveResource/Base.html_
<!-- JWT Authentication -->
* _https://www.pluralsight.com/guides/token-based-authentication-with-ruby-on-rails-5-api_

### License

*Copyright <2020> <Kyle Wymer and Marcus Jensen, Epicodus>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.*
