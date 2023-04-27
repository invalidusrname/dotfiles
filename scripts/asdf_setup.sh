asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin-add python
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin-add yarn

#bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'
#gpg --keyserver hkps://keys.openpgp.org --recv-keys 4ED778F539E3634C779C87C6D7062848A1AB005C

asdf plugin update --all

asdf install nodejs
asdf install python
asdf install ruby
