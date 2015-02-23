class PrequalMailer < ActionMailer::Base
    default from: "myrentwillbuy@gmail.com"

  def prequal_submission_to_guest(prequal)
    @prequal = prequal
    if Rails.env.production?
    	mail to: "myrentwillbuy@gmail.com", cc: "myrentwillbuy@gmail.com", subject: "My Rent Will Buy: Congratuations!"
    else
    	mail to: "foster154@gmail.com", cc: "myrentwillbuy@gmail.com", subject: "(DEV) My Rent Will Buy: Congratuations!"
	end
  end

  def prequal_submission_to_agent_lender(prequal)
    @prequal = prequal
    if Rails.env.production?
    	mail to: "team.neal3@followupboss.me", cc: "myrentwillbuy@gmail.com", subject: "New Lead from My Rent Will Buy"
    else
    	mail to: "foster154@gmail.com", cc: "myrentwillbuy@gmail.com", subject: "(DEV) New Prequal Lead from My Rent Will Buy"
	end
  end
end