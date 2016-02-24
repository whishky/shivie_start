class LawyersController < ApplicationController
  def index
  	render 'new'
  end

  def create
  	@lawyer = Lawyer.new(lawyer_params)
		if @lawyer.save
			redirect_to @lawyer
		else	
			render 'new'
		end
  end

  def show
  	@lawyer = Lawyer.find(params[:id])
  end

  def edit

  end

  def delete

  end

  def lawyer_params
		params.require(:lawyer).permit(:name, :email_id, :address, :college_name, :qualification, :gender, :dob, :experience, :mobile_no, :username, :password, :password_confirmation)
	end
end
