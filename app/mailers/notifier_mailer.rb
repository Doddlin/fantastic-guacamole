class NotifierMailer < ApplicationMailer

    def case_assigned
        @case = params[:case]
        mail(to: User.find(2).email, subject: 'A case has been assigned to you')
    end

end
