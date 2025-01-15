class WhoisInformation::Warning
  def initialize(type:, data:)
    @type = type
    @data = data
  end

  def to_string
    I18n.t("errors.messages.#{@type}", data: @data)
  end
end
