# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.scss, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w[application.scss]
Rails.application.config.assets.precompile += %w[base.scss]
Rails.application.config.assets.precompile += %w[login.scss]
Rails.application.config.assets.precompile += %w[reg.scss]
Rails.application.config.assets.precompile += %w[reg2.scss]
Rails.application.config.assets.precompile += %w[reg3.scss]
Rails.application.config.assets.precompile += %w[reg4.scss]
Rails.application.config.assets.precompile += %w[reg5.scss]
Rails.application.config.assets.precompile += %w[reg6.scss]
Rails.application.config.assets.precompile += %w[top.scss]
Rails.application.config.assets.precompile += %w[setting.scss]
Rails.application.config.assets.precompile += %w[userpage.scss]
Rails.application.config.assets.precompile += %w[lity.min.css]
Rails.application.config.assets.precompile += %w[lity.min.js]
