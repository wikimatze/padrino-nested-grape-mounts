# Install

```
bundle
```


# Running

Start the application with `padrino s`. Then browse to <http://127.0.0.1:3000/master/hello> to get the master and to
<http://127.0.0.1:3000/master/v1/hallo> to get the mounted v1 app inside of `api/api.rb`

The only caveat is that you need to include the in `config/apps.rb`:

```
# Mounts the core application for this project
Padrino.mount('V1', :app_file => Padrino.root('api/v1.rb'), :app_class => 'Grappe::V1') # this one needs first
Padrino.mount('Api', :app_file => Padrino.root('api/api.rb'), :app_class => 'Grappe::Api').to('/master')
```

