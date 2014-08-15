Fun::App.controllers :connections do

  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end
  get '/', :with => :id do
    puts params[:id]
    connection = Connection.find(:id)
    connection
  end

  # Get all transactions
  get '/:id/transactions' do
  end

  # Create transaction
  post '/:id/transactions' do
  end

  # Get specific transaction
  get '/:id/transactions/:id' do
  end

end
