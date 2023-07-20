
if Doorkeeper::Application.count == 0
    Doorkeeper::Application.create(name: 'My App 1', redirect_uri: '', scopes: '')
    Doorkeeper::Application.create(name: 'My App 2', redirect_uri: '', scopes: '')
    Doorkeeper::Application.create(name: 'My App 3', redirect_uri: '', scopes: '')
    Doorkeeper::Application.create(name: 'react', redirect_uri: '', scopes: '')
end

User.first_or_create(email: 'maike@example.com', password: 'password', password_confirmation: 'password', role: 'admin')