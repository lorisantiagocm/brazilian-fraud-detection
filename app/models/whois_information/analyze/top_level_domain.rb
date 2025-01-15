class WhoisInformation::Analyze::TopLevelDomain < Micro::Case
  attributes :top_level_domain

  SUSPECT_TERMS = %w[ccc cc xy xyz army dns online livre codes app goo gl]
  TRUSTABLE_TERMS = %w[com br net io ai gov edu org]

  def call
    found_suspect_terms = []
    found_trustable_terms = []

    SUSPECT_TERMS.each do |term|
      found_suspect_terms << domain.includes?(term)
    end

    TRUSTABLE_TERMS.each do |term|
      found_trustable_terms << domain.includes?(term)
    end

    Success result: { top_domain_suspected_terms: found_suspect_terms, top_domain_trusted_terms: found_trustable_terms }
  end
end
