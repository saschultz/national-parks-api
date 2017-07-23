# National Parks API

### Sara Schultz, 7.21.17

This API returns national parks, and hikes inside each park. The API has search functionality for the park with the most hikes, and to return a park by location. A random park can also be returned.

### Setup/Install Requirements

 Run these commands in the terminal:

 ```
 git clone https://github.com/saschultz/national-parks-api
 cd national-parks-api
 bundle install
 rails db:create
 rails db:migrate
 rails db:reset
 rails s
```
API requests can also be tested in Postman: https://www.getpostman.com/

### API Endpoints

|Usage | METHOD       | URL       | Params |
| --------|:------------:| ---------:| ------:|
|Return All Parks | GET    | `localhost:3000/parks` |  |
|Return a Specific Park | GET    | `localhost:3000/parks/:id` |  |
|Search By Park Location | GET    | `localhost:3000/parks/search?location=` | _location_ |
|Return a Random Park | GET    | `localhost:3000/parks/random` |  |
|Create a Park | POST    | `localhost:3000/parks` | _name, location, free_entrance_days_ |
|Update a Park | PATCH    | `localhost:3000/parks/:id` | _name, location, free_entrance_days_ |
|Delete a Park | DELETE    |`localhost:3000/parks/:id`|   | |
|Return All Hikes for a Specific Park | GET    | `localhost:3000/parks/:id/hikes` |  |
|Search for the Park with the Most Hikes | GET    | `localhost:3000/parks/most_hikes` | |
|Create a Hike | POST    | `localhost:3000/parks/:id/hikes` | _name, miles, difficulty_ |
|Update a Hike | PATCH    | `localhost:3000/parks/:id/hikes` | _name, miles, difficulty_ |
|Delete a Hike | DELETE    |`localhost:3000/parks/:id/hikes`|   | |


### Known Bugs
No known bugs!

### Technologies Used
  Ruby 2.4.1
  Rails 5.1.2
  ActiveRecord
  Postgres
  Postman (API testing)

### By Authors
Sara Schultz

### Support and contact details
saschultz8@gmail.com

### License
_MIT_
Copyright (c) 2017 **Sara Schultz**
