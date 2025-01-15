class WhoisInformation::Analyze::Domain < Micro::Case
  attributes :domain

  SUSPECT_TERMS = %w[oferta promocao imperdivel misteriosa desconto liquida]

  def call
    found_suspect_terms = []

    SUSPECT_TERMS.each do |term|
      found_suspect_terms << domain.includes?(term)
    end

    known_trusted_domain = Domain.all.where(trusted: true, name: domain)

    Success result: { domain_found_suspect_terms: found_suspect_terms, known_trusted_domain: known_trusted_domain }
  end
end
