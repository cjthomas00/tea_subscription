<a name="readme-top"></a>

<div align="center">

# Tea Subscripton


</div>
<div align="center">
  <h3 align="center"></h3>

  <div align="center">
    <br>
    <p> The Tea Subscription app is an API that allows users to create various tea subscriptions. After sign up, customers can choose their preferred teas, and set the frequency of their deliveries. The app provides endpoints for subscribing, canceling, and viewing subscriptions. </p>
    <br />
  </div>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li><a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#installation">Installation</a></li>
        <li><a href="#testing-with-rspec">Testing With RSpec</a></li>
      </ul>
    </li>
    <li><a href="#available-endpoints">Available Endpoints</a></li>
    <li><a href="#goals">Goals</a></li>
  </ol>
</details>

<br>

<!-- ABOUT THE PROJECT -->
## About The Project

<!-- ADD PROJECT DESCRIPTION -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Built With:

[![Ruby]][Ruby-url] **3.1.1**
[![Rails]][Rails-url] **7.0.4**
[![Postgresql]][Postgresql-url] **1.1**

### Testing:

[![Faker]][Faker-url]
[![Factory Bot]][Factory Bot-url]
[![RSpec]][RSpec-url]
[![SimpleCov]][SimpleCov-url]


<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

<br>

### Installation

1. Clone the repo:
   ```bash
   git clone git@github.com:cjthomas00/tea_subscription.git
   ```

2. Install gems:
   ```bash
   bundle install
   ```

3. To establish the database and create seed data run:
   ```bash
   bundle exec rails db:{drop,create,migrate,seed}
   ```


  Inspect the `/db/schema.rb` and compare to the 'Schema' section below to ensure this migration has been done successfully.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<br>

### Testing with RSpec

Once `tea_subscription` is correctly installed, run tests locally to ensure the repository works as intended.

<br>

  To test the entire RSpec suite, run:
   ```bash
   bundle exec rspec
   ```

## Available Endpoints

Current endpoint documentation exists on Postman [here](https://www.postman.com/planetary-astronaut-442565/workspace/tea-subscription/documentation/26382006-24579d08-c9cb-45b4-bed3-853acf6f28b0).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Goals

tea_subscription was developed to satisfy the requirements for The Turing Mod 4 **Take-Home Project**. See the official project requirements [here](https://mod4.turing.edu/projects/take_home/).

### MVP
At a minimum, you must create:
- An endpoint to subscribe a customer to a tea subscription
- An endpoint to cancel a customer’s tea subscription
- An endpoint to see all of a customer’s subsciptions (active and cancelled)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Future Goals
- Further sad path testing and error handling
- More CRUD functionality
- Additional endpoints for tea and subscription management

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Database Schema

![Mod4 take home schema](https://github.com/cjthomas00/tea_subscription/assets/104170346/63d8bddd-4498-40ce-b59f-25255b3f3360)


<br>

## Acknowledgments

- ["The Best README Template" by Github User othneil](https://github.com/othneildrew/Best-README-Template)
- [Turing School of Software & Design](https://turing.edu/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->

[Ruby]: https://img.shields.io/badge/ruby-000000?style=for-the-badge&logo=ruby&logoColor=red
[Ruby-url]: https://www.ruby-lang.org/en/

[Rails]: https://img.shields.io/badge/rails-red?style=for-the-badge&logo=rubyonrails&logoColor=white&color=red

[Rails-url]: https://rubyonrails.org/

[Postgresql]: https://img.shields.io/badge/postgresql-3386FF?style=for-the-badge&logo=postgresql&logoColor=FFFFFF
[Postgresql-url]: https://www.postgresql.org/

[Heroku]: https://img.shields.io/badge/Heroku-430098?style=for-the-badge&logo=heroku&logoColor=white
[Heroku-url]: https://www.heroku.com/

[Circle-CI]: https://img.shields.io/circleci/build/github/wise-app-team/wise-app-be/main
[Circle-url]: https://app.circleci.com/


[Puma]: https://img.shields.io/badge/-Puma-FFD43B?logo=puma&logoColor=black&style=for-the-badge
[Puma-url]: https://github.com/puma/puma

[bcrypt]: https://img.shields.io/badge/-bcrypt-00599C?logo=gnu-privacy-guard&logoColor=white&style=for-the-badge
[bcrypt-url]: https://github.com/codahale/bcrypt-ruby

[Faraday]: https://img.shields.io/badge/-Faraday-3E3E3E?logo=ruby&logoColor=white&style=for-the-badge
[Faraday-url]: https://github.com/lostisland/faraday

[Figaro]: https://img.shields.io/badge/-Figaro-FF4136?logo=rubygems&logoColor=white&style=for-the-badge
[Figaro-url]: https://github.com/laserlemon/figaro

[GraphQL]: https://img.shields.io/badge/-GraphQL-E10098?logo=graphql&logoColor=white&style=for-the-badge
[GraphQL-url]: https://graphql.org/

[GraphiQL]: https://img.shields.io/badge/-GraphiQL-E10098?logo=graphql&logoColor=white&style=for-the-badge
[GraphiQL-url]: https://github.com/graphql/graphiql


[JSON-Serializer]: https://img.shields.io/badge/-JSON%20API%20Serializer-1E90FF?logo=json&logoColor=white&style=for-the-badge
[JSON-Serializer-url]: https://github.com/jsonapi-serializer/jsonapi-serializer

[Capybara]: https://img.shields.io/badge/-Capybara-FF7F50?logo=rubygems&logoColor=white&style=for-the-badge
[Capybara-url]: https://github.com/teamcapybara/capybara

[RSpec]: https://img.shields.io/badge/-RSpec-FF7F50?logo=rubygems&logoColor=white&style=for-the-badge
[RSpec-url]: https://github.com/rspec/rspec

[Faker]: https://img.shields.io/badge/-Faker-FF69B4?logo=rubygems&logoColor=white&style=for-the-badge
[Faker-url]: https://github.com/faker-ruby/faker

[Shoulda-Matchers]: https://img.shields.io/badge/-Shoulda%20Matchers-5B5B5B?logo=rubygems&logoColor=white&style=for-the-badge
[Shoulda-Matchers-url]: https://github.com/thoughtbot/shoulda-matchers

[Web-mock]: https://img.shields.io/badge/-WebMock-8B0000?logo=rubygems&logoColor=white&style=for-the-badge
[Web-mock-url]: https://github.com/bblimke/webmock

[VCR]: https://img.shields.io/badge/-VCR-2F4F4F?logo=rubygems&logoColor=white&style=for-the-badge
[VCR-url]:  https://github.com/vcr/vcr

[Faker]: https://img.shields.io/badge/-Faker-00BFFF?logo=rubygems&logoColor=white&style=for-the-badge
[Faker-url]: https://github.com/faker-ruby/faker

[Factory Bot]: https://img.shields.io/badge/-FactoryBot-00BFFF?logo=rubygems&logoColor=white&style=for-the-badge
[Factory Bot-url]: https://github.com/thoughtbot/factory_bot

[SimpleCov]: https://img.shields.io/badge/-SimpleCov-00BFFF?logo=rubygems&logoColor=white&style=for-the-badge
[SimpleCov-url]: https://github.com/simplecov-ruby/simplecov

[Capybara]: https://img.shields.io/badge/-Capybara-00BFFF?logo=rubygems&logoColor=white&style=for-the-badge
[Capybara-url]: https://github.com/teamcapybara/capybara

[Pry]: https://img.shields.io/badge/-Pry-00BFFF?logo=rubygems&logoColor=white&style=for-the-badge
[Pry-url]: https://github.com/pry/pry


