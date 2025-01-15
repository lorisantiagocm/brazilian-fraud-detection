class WhoisInformation::Analyze::Domain < Micro::Case
  attributes :protocol

  def call
    trustable = protocol == "https"
    Success result: { trustable_protocol: trustable }
  end
end
