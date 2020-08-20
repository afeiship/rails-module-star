# get started
- https://www.dazhuanlan.com/2019/12/30/5e0971b61fa98/
- https://blog.csdn.net/lissdy/article/details/73779686


## steps
1. create User/Product model
2. prepare data

## dazhuanlan里的明显错误
- has -> had
- current_user(单词写错的)
- colloect -> collect(错误单词误导人 rails g model colloect)

## user
1. 按上述步骤添加 user.rb 
2. 添加 gem `gem "bcrypt", "~> 3.1.7"`
3. 添加这一行到 user.rb 中去: `has_secure_password`
4. 运行 seed.rb 中的代码添加用户


## models
```rb
# user
rails g model User username:string password_digest:string access_token:string
# product
rails g model Product title:string description:string
rails g model collect
```