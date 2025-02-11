class Schema::Status < Lockstep::ApiRecord

# ApiRecord will crash unless `id_ref` is defined
def self.id_ref
  nil
end

  # If authentication is successful, contains the username of the logged-in user.
  # @type: string
  field :user_name

  # If authentication is successful, contains subscription account name of logged-in user.
  # @type: string
  field :account_name

  # If authentication is successful, contains subscription account company id of logged-in user.
  # @type: string
  # @format: uuid
  field :account_company_id

  # If authentication is successful, contains the unique identifier of the logged-in user.
  # @type: string
  # @format: uuid
  field :user_id

  # If authentication is successful, contains the group key of the logged-in user.
  # @type: string
  # @format: uuid
  field :group_key

  # Returns true if authentication for this API was successful.
  # @type: boolean
  field :logged_in

  # The error message.
  # @type: string
  field :error_message

  # The set of roles for this user.
  # @type: array
  field :roles

  # Date and time user has last logged into Azure B2C.
  # @type: string
  # @format: date-time
  field :last_logged_in, Types::Params::DateTime

  # The id of the API key used to authenticate.
  # @type: string
  # @format: uuid
  field :api_key_id

  # If authentication is successful, contains the user status of the logged-in user.
  # @type: string
  field :user_status

  # The environment currently being used
  # @type: string
  field :environment

  # The version currently being used
  # @type: string
  field :version

  # Statuses for the dependencies of this api.
  # OK if the dependency is working.
  # @type: object
  field :dependencies



end