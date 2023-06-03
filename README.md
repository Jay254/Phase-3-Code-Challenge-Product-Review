# Phase-3-Code-Challenge-Product-Review

PROJECT NAME: 
    Jay's Product Management Tool

PROJECT DESCRIPTION: 
    This project does data handling of users, products, reviews, and the relationship existing between them. it utilizes SQLite3 database, and active record among other Ruby gems, to attain functionality.

INSTALLATION
    To use this project, follow these steps:

    Fork this repository and clone it in your local environment: git clone <repository-ssh-key>
    Install dependencies: run 'bundle install' to install ruby gems listed in the gemfile

USAGE
    To run the project, you can execute the Ruby files in your preferred environment. Make sure to set up the database configuration appropriately in the config/database.yml file.

    You can explore the different classes and their methods to manage products, reviews, and users.

CLASSES
    User
        The User class represents a user in the system.

        Methods:

            favorite_product: Returns the product instance with the highest star rating from this user.
            remove_reviews(product): Removes all reviews by this user for a given product.
    Review
        The Review class represents a review for a product written by a user.

        Methods:

            print_review: Prints the details of the review to the console.
    Product
        The Product class represents a product in the system.

        Methods:

            leave_review(user, star_rating, comment): Creates a new review for this product by a user with the given star rating and comment.
            print_all_reviews: Prints all the reviews for this product to the console.
            average_rating: Returns the average star rating for all reviews of this product.

SEEDING THE DATABASE
    The db/seeds.rb file contains code to populate the database with random users, products, and reviews. To seed the database, run the following command:

        rake db:seed
        This will create 20 random users, 20 random products, and 100 random reviews in the database.

CONTRIBUTING
    Contributions to this project are welcome. Feel free to open issues and submit pull requests.

AUTHOR & DEVELOPER
This project was developed by:
        Yegon Japheth Kiptoo- Name
        Jay254 - Github username
        jyegon504@gmail.com - email




