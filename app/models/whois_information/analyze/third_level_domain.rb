class WhoisInformation::Analyze::ThirdLevelDomain < Micro::Case
  attributes :third_level_domain

  SUSPECT_TERMS = %w[bradesco itau bancodobrasil outback flamengo caixa]

  def call
    found_suspect_terms = []

    SUSPECT_TERMS.each do |term|
      found_suspect_terms << domain.includes?(term)
    end

    Success result: { third_level_domain_suspected_terms: found_suspect_terms }
  end
end
