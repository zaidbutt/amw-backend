class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    # Mock data for now – replace with real queries.
    # @stories = [
    #   { title: "It's a Wonderful Story", chapters: 12, moments: 48, status: :active },
    #   { title: "Family History",         chapters: 7,  moments: 19, status: :paused },
    #   { title: "Our Baby’s First Year",  chapters: 5,  moments: 33, status: :active },
    # ]

    @notifications = [
      { text: "Anna added 3 moments to “Family History”.", time: "5m" },
      { text: "Invite accepted by Jamie.",                  time: "22m" },
      { text: "Chapter shared link is ready.",              time: "1h"  },
      { text: "Export completed for “First Year”.",         time: "2h"  },
    ]

    @stories = Story.where(user_id: current_user.id)

  end
end
