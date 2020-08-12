# Microverse Capstone Project: Web_Scraper
This web scraper is built using Ruby Programming language. It is a capstone project that is part of the Microverse curriculum, developed to showcase the author's ability to develop a project based on Ruby & any given business logic.

## Project Design:
> Project output screenshot.

![screenshot](assets/project_screenshot.PNG)

This project is a Web Scraper that takes information from Medium Website. It scrapes some articles written by Microverse students & any other articles that have anything to do with Microverse in generall. The scraper takes the information retrieved from the website & uses Nokogiri gem to store everything as an object. I then took this object & retrieve each article information and display it in a way that's more readable & organised. The articles are displayed in discending order based on the number of claps ( which in this case is the popularity that you see when you run the code. )

## Built With

- Ruby
- Rspec (testing)
- HTTParty
- Nokogiri
- Rubocop
- Colorize
- Pry (for debugging)

## SetUp
To start contributing to this project run: <br>
  `git clone https://github.com/ClaytonSiby/Web_Scraper.git` <br>

Now create a feature branch & open a pull request based on development (develop) branch.

After cloning the project, you should cd into the (web_scraper) directory where the code is stored & nevigate into bin older using `cd bin` command on the terminal, then run: `bundle install` to install the necessary dependencies & lastly run: `ruby main.rb` to see the scraper in action.

## To Run Rspec:

Open your terminal & run `rspec` & the program will run tests for two files (scraper.rb & structure_data.rb).

## Tools Used:

- Visual Studio Code

## Author

👤 **Clayton Siby**

- Github: [@Clayton Siby](https://github.com/ClaytonSiby)
- Twitter: [@ClaytonSiby](https://twitter.com/ClaytonSiby)
- Linkedin: [linkedin](https://www.linkedin.com/in/clayton-siby-48a8a0183/)
- claytonsiby@gmail.com

# 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/ClaytonSiby/Web_Scraper/issues).

## Please show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse.org
- StackOverflow
- tutorialspoint.com


# 📝 License

This project is [MIT](https://github.com/ClaytonSiby) licensed.
