RailsAdmin.config do |config|
  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model Talk do
    list do
      field :event
      field :order
      field :name
      field :description
      field :schedule
      field :ends_at
    end

    edit do
      field :event
      field :order
      field :name
      field :description
      field :speaker
      field :schedule
      field :ends_at
      field :is_keynote
      field :rate
      field :note
      field :is_fav
      field :is_canceled
      field :has_feedback
    end
  end

end
