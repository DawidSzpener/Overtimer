# Overtimer

Check out the deployed app [here]()

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

![demo]()

## Built With

* [Ruby On Rails](https://rubyonrails.org/) - Ruby framework
* [Devise](https://github.com/heartcombo/devise) - User authentication
* [Enum](https://github.com/dblock/ruby-enum) - Enable enumerating statuses eg. { approved: 0 }
* [FactoryGirl] - Fixture replacement
* [Gritter](https://github.com/RobinBrouwer/gritter) - Error messages
* [Administrate] - Admin dashboard
* [Pundit](https://github.com/varvet/pundit) - Creates policies (permissions management)
* [Kaminari] - Post Pagination

## Authors

* **[Dawid Szpener](https://github.com/DawidSzpener)**

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details