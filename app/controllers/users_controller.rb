class UsersController < ApplicationController
  
  #before_filter :authenticate_user!
  load_and_authorize_resource
  def index
    
    #@search = User.scoped_search(params[:search])
    @users = User.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end
  
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end


  # GET /usuarios/1/edit
  def edit
    @user = User.find(params[:id])
  end


  # PUT /usuarios/1
  # PUT /usuarios/1.xml
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(root_path, :notice => 'Usuario alterado com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarios/1
  # DELETE /usuarios/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(user_url) }
      format.xml  { head :ok }
    end
  end
  
end
