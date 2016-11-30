# Bank tech test

### Running the tech test:
```
$ git clone https://github.com/andygjenkins/bank_tt.git
$ bundle
$ rspec
$ irb/pry
```
Use irb/pry to interact with code
Instantiate account with key/value if a different starting balance is required. e.g.
account = Account.new(balance: 100)

### User Stories
```
As a User
So that I can manage my finances
I should be able to open an account

As a User
So that I can spend and save
I should be able to make deposits and withdrawals

As a User
So that I can keep a record of my transactions
I should be a able to see an account statement
```
### Progress
- [x] Initialize repository and write User Stories
- [x] Write tests for deposit, withdrawal
- [x] Pass for deposit, withdrawal
- [x] Write tests for returning an account statement
- [ ] Pass final test
