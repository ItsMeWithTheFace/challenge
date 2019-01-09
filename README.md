# challenge

## Development
To work on the project locally ensure you have the following dependencies first:
- Rails 5.2
- Ruby 2.4

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
3. Run the migrations
   ```bash
   rails db:migrate
   ```
4. Run the tests
   ```bash
   bundle exec rspec
   ```
5. Start the local server
   ```bash
   rails s
   ```

which will create a server running on `localhost:3000`
