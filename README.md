# Active Storage Demo

### Setup

* `rails db:create db:migrate`
* `rails s`

### Check it Out

* visit `/thing_with_rails_forms/new`
* Give your thing a name and an image
* visit `/thing_with_react_forms/new`
* Give your thing a name and an image

### Interesting Code Lives in

* The model files (`has_one_attached :image`)
* The controller files (permit the `:image` param)
* `/app/views/thing_with_rails_forms/_form.html.erb` (<%= form.file_field %>)
* `/app/views/thing_with_rails_forms/show.html.erb` (<%= image_tag(@thing_with_rails_form.image) %>)
* `/app/views/thing_with_react_forms/index.html.erb` (<%= react_component 'FormForThingWithReactForm' %>)
* `/app/views/thing_with_react_forms/show.html.erb` (<%= react_component 'ShowThingWithReactForm' %>)
* `/app/javascript/bundles/ThingWithReactForm/*` (all of it)

### You will still need to configure AWS for production

* https://medium.com/alturasoluciones/setting-up-rails-5-active-storage-with-amazon-s3-3d158cf021ff
