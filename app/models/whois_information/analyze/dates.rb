class WhoisInformation::Analyze::Dates < Micro::Case
  attributes :created_at, :last_updated_at

<<<<<<< HEAD
  def call!
    suspect_created_at = created_at.nil? || created_at < 1.year.ago
    suspect_updated_at = last_updated_at.nil? || last_updated_at < 1.year.ago
=======
  def call
    suspect_created_at = created_at < 1.year.ago
    suspect_updated_at = last_updated_at < 1.year.ago
>>>>>>> 876c1236ea9daa21879b12a0df5d4abed889cc7e

    Success result: { suspect_created_at: suspect_created_at, suspect_updated_at: suspect_updated_at }
  end
end
