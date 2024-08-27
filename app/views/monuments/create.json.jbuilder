if @monument.persisted?
  json.inserted_item render(partial: 'monument', formats: :html, locals: { monument: @monument })
  json.form render(partial: 'form', formats: :html, locals: { monument: Monument.new })
else
  json.form render(partial: 'form', formats: :html, locals: { monument: @monument })
end
