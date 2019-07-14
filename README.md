
# Example API

## Development

#### Initial Setup
```
docker-compose build
docker-compose run web rake db:create db:migrate
```

#### Development Server
```
docker-sync-stack start
```

#### Rails Console
```
docker-compose run web rails console
```

#### Editing Credentials
```
EDITOR="vim" bin/rails credentials:edit
```


## Production

#### Deployment
```
cap staging deploy
```