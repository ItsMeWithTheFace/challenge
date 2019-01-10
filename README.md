# challenge

## Development
To work on the project locally ensure you have the following dependencies first:
- Rails 5.2
- Ruby 2.4
- PostgreSQL 11.1

Then build the project by performing the following steps:
1. Clone the project
   ```bash
   git clone https://github.com/ItsMeWithTheFace/challenge.git
   ```
2. Install dependencies
   ```bash
   cd challenge/
   bundle install
   ```
3. Update `config/database.yml` with your local postgres database parameters
4. Run the migrations
   ```bash
   rails db:migrate
   ```
5. Run the tests
   ```bash
   bundle exec rspec
   ```
6. Start the local server
   ```bash
   rails s
   ```

which will create a server running on `localhost:3000`

## Documentation
To view the API documentation for this project see the [GitHub Wiki](https://github.com/ItsMeWithTheFace/challenge/wiki)

Tests are actually located in the `spec` folder instead of `test` (since these use RSpec)
