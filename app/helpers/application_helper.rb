module ApplicationHelper

  # クリアボタン
  def reset_button(value = "Reset Button", options = {})
    options = options.stringify_keys
    tag :input, { type: "reset", value: value }.update(options)
  end
end
