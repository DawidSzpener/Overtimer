# Overtimer

Check out the deployed app [here](https://overtimer-app.herokuapp.com/)

Overtimer - application meant to help approve overtime hours

## Getting Started

For local development:

```
$ git clone https://github.com/DawidSzpener/Overtimer
$ bundle install
$ bundle exec rake db:setup
$ rails s
```

#### NOTE 

User credentials:
``` 
email - test@test.com 
password: asdasd
```

Admin credentials:
```
email: admintest@test.com
password: asdasd
```

## DEMO

![demo](https://raw.githubusercontent.com/DawidSzpener/Overtimer/main/app/assets/images/overtimer.gif)

## Built With

* [Ruby On Rails](https://rubyonrails.org/) - Ruby framework
* [Devise](https://github.com/heartcombo/devise) - User authentication
* [Enum](https://github.com/dblock/ruby-enum) - Enable enumerating statuses eg. { approved: 0 }
* [FactoryGirl](https://github.com/thoughtbot/factory_bot) - Fixture replacement
* [Gritter](https://github.com/RobinBrouwer/gritter) - Error messages
* [Administrate](https://github.com/thoughtbot/administrate) - Admin dashboard
* [Pundit](https://github.com/varvet/pundit) - Creates policies (permissions management)
* [Kaminari](https://github.com/kaminari/kaminari) - Post Pagination

## Authors

* **[Dawid Szpener](https://github.com/DawidSzpener)**

# License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
