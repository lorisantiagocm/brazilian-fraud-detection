class WhoisInformation::Analyze < Micro::Case
  flow  BreakDownDomain,
        ::WhoisInformation::Fetch,
        Dates,
        Domain,
        Protocol,
        TopLevelDomain,
        ThirdLevelDomain,
        self.call!

  # attributes :created_at

  def call!
    binding.irb
    return Success
    # warnings = []

    # warnings << Warning.new(type: :suspect_top_domain_terms, data: top_domain_suspected_terms.join(', ')) if top_domain_suspected_terms.any?
    # warnings << Warning.new(type: :trusted_top_domain_terms, data: top_domain_trusted_terms) if top_domain_trusted_terms.any?

    # binding.irb
    # warnings << Warning.new(type: :new_domain, data: created_at) if top_domain_trusted_terms.any?
  end
end
