# Rails

## Configuration

* Put custom initialization code in `config/initializers`. The code in initializers executes on application startup.
* Keep initialization code for each gem in a separate file with the same name as the gem, for example `carrierwave.rb`, `active_admin.rb`, etc.
* Adjust accordingly the settings for development, test and production environment (in the corresponding files under `config/environments/`)
* Keep configuration that's applicable to all environments in the `config/application.rb` file.
* Create an additional `staging` environment that closely resembles the `production` one.

## Routing

TODO

## Controllers

* Keep the controllers skinny - they should only retrieve data for the view layer and shouldn't contain any business logic (all the business logic should naturally reside in the model).
* Each controller action should (ideally) invoke only one method other than an initial find or new.
* Share no more than two instance variables between a controller and a view.

## Models

* Introduce non-ActiveRecord model classes freely.
* Name the models with meaningful (but short) names without abbreviations.

### ActiveRecord

* Avoid altering ActiveRecord defaults (table names, primary key, etc) unless you have a very good reason (like a database that's not under your control).

  ```ruby
  # bad - don't do this if you can modify the schema
  class Transaction < ActiveRecord::Base
    self.table_name = 'order'
    ...
  end
  ```

* Group macro-style methods (`has_many`, `validates`, etc) in the beginning of the class definition.

  ```ruby
  class User < ActiveRecord::Base
    # keep the default scope first (if any)
    default_scope { where(active: true) }

    # constants come up next
    COLORS = %w(red green blue)

    # afterwards we put attr related macros
    attr_accessor :formatted_date_of_birth

    attr_accessible :login, :first_name, :last_name, :email, :password

    # followed by association macros
    belongs_to :country

    has_many :authentications, dependent: :destroy

    # and validation macros
    validates :email, presence: true
    validates :username, presence: true
    validates :username, uniqueness: { case_sensitive: false }
    validates :username, format: { with: /\A[A-Za-z][A-Za-z0-9._-]{2,19}\z/ }
    validates :password, format: { with: /\A\S{8,128}\z/, allow_nil: true}

    # next we have callbacks
    before_save :cook
    before_save :update_username_lower

    # other macros (like devise's) should be placed after the callbacks

    ...
  end
  ```

* Use named scopes freely.

  ```ruby
  class User < ActiveRecord::Base
    scope :active, -> { where(active: true) }
    scope :inactive, -> { where(active: false) }

    scope :with_orders, -> { joins(:orders).select('distinct(users.id)') }
  end
  ```

### ActiveRecord Queries

* Avoid string interpolation in queries, as it will make your code susceptible to SQL injection attacks.

  ```ruby
  # bad - param will be interpolated unescaped
  Client.where("orders_count = #{params[:orders]}")

  # good - param will be properly escaped
  Client.where('orders_count = ?', params[:orders])
  ```

* Favor the use of `find` over `where` when you need to retrieve a single record by id.

  ```ruby
  # bad
  User.where(id: id).take

  # good
  User.find(id)
  ```

* Favor the use of `find_by` over `where` when you need to retrieve a single record by some attributes.

  ```ruby
  # bad
  User.where(first_name: 'Bruce', last_name: 'Wayne').first

  # good
  User.find_by(first_name: 'Bruce', last_name: 'Wayne')
  ```

* Favor the use of `where.not` over SQL.

  ```ruby
  # bad
  User.where("id != ?", id)

  # good
  User.where.not(id: id)
  ```

## Views

* Never call the model layer directly from a view.
* Mitigate code duplication by using partial templates and layouts.

