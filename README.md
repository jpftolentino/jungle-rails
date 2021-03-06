# Jungle

A mini e-commerce application built with Rails 4.2. Focuses on MVC design patterns using rails.

!["screenshot description"](https://github.com/jpftolentino/jungle-rails/blob/master/docs/jungle.png?raw=true)
!["screenshot description"](https://github.com/jpftolentino/jungle-rails/blob/master/docs/jungle1.png?raw=true)
!["screenshot description"](https://github.com/jpftolentino/jungle-rails/blob/master/docs/jungle2.png?raw=true)
!["screenshot description"](https://github.com/jpftolentino/jungle-rails/blob/master/docs/jungle4.png?raw=true)
!["screenshot description"](https://github.com/jpftolentino/jungle-rails/blob/master/docs/jungle5.png?raw=true)

## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

!["screenshot description"](https://github.com/jpftolentino/jungle-rails/blob/master/docs/jungle3.png?raw=true)

## Email testing

Use the domain to view sent emails from app
```
http://localhost:3000/letter_opener
```
!["screenshot description"](https://github.com/jpftolentino/jungle-rails/blob/master/docs/jungle%207.png?raw=true)

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
