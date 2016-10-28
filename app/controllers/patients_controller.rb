class PatientsController < ApplicationController
    def index
        @patients = Patient.all
    end
    
    def show
        @patients = Patient.find(params[:id]) 
    end
    
    def new
        @patients = Patient.new
    end
    
    def create
            @patients = Patient.new(post_params)
                if @patients.save
                    redirect_to @patients
                else
                    render :new
                end
    end
        
    private
        
    def post_params
        params.require(:patient).permit(:id_patient, :firstname, :middlename, :lastname, :address, :reason_of_consultation, :date_of_birth)
    end
end
