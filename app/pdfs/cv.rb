class Cv < Prawn::Document 
	def initialize(details)
		super(top_margin: 70)
		 @applicant_personal_details = details

		@applicant_personal_details.each do |app|
			text "Curriculum Vitae of #{app.First_Name} #{app.Middle_Name} #{app.Surname}", :size => 16, :style => :bold, :spacing => 4
			move_down 10
			text "Personal Details", :size => 14, :style => :bold
			move_down 10
  			text "Name: #{app.First_Name}"
  			text "Middle Name: #{app.Middle_Name}"
  			text "Surname: #{app.Surname}"
  			text "Contact Number: #{app.Contact_Number}"
  			text "Alternate Number: #{app.Alt_Contact_Number}"
  			text "Nationality: #{app.applicant_nationality}"
  			text "Race: #{app.applicant_race}"
  			text "Gender: #{app.applicant_gender}"
  			text "Marital Status: #{app.applicant_marital_status}"
  			text "Number of Dependancies: #{app.Number_Of_Dependancies}"
  			# start_new_page
		end
	end 

end