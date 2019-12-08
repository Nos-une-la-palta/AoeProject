ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :nick, :moderator, :provider, :uid, :image_url
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :nick, :moderator, :provider, :uid, :image_url]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    column :id 
    column :email
    column :created_at 
    column :moderator
    column :provider
    actions
  end

  form do |f|
   inputs 'Agregar nuevo usuario' do
    input :email
    input :password 
    input :moderator
   end
   actions
  end

  controller do
    def update
    if (params[:user][:password].blank? && params[:user]
    [:password_confirmation].blank?)
    params[:user].delete("password")
    params[:user].delete("password_confirmation")
    end
    super
    end
  end
  
end
