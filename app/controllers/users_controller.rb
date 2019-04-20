class UsersController < Frack::BaseController
  def index
    @users = User.all
    render 'users/index'
  end

  def contact
    render 'users/contact'
  end

  def mail
    params = Rack::Request.new(env).params
    unless params['name'].empty? || params['email'].empty? || params['phone_number'].empty? || params['content'].empty?
      email = Email.new params
      email.save
      HardWorker.perform_async(params)
      render 'users/success'
    else
      render 'users/fail'
    end
  end
end