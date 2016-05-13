# rails-exam
Rails Project Example

## HelloActiveJob

hello_world 라는 이름의 Job을 만든다.

```ruby
$ rails g job hello_world
```

Job 파일에 수행해야 할 일들을 기록

```ruby
# app/controllers/hello_world_controller.rb
class HelloWorldJob < ActiveJob::Base
  queue_as :default

  def perform(message)
    logger.info 'start'
    sleep(2)
    logger.info message
    logger.info 'end'
  end
end
```

Job Scheduler를 선택한다. 나의 경우는 sidekiq 을 선택했다.

sidekiq은 queue로 redis를 사용한다.

redis가 설치가 되어 있지 않다면 설치한다.

```sh
# install redis (mac)
$ brew install redis
```

```ruby
# application.rb
module HelloActiveJob
  class Application < Rails::Application
...
    config.active_job.queue_adapter = :sidekiq
  end
end
```

```ruby
# Gemfile
gem 'sidekiq'
```

JobQueue에 Job을 추가할 수 있도록 컨트롤러를 만든다.

```ruby
$ rails g controller hello_world
```

```ruby
class HelloWorldController < ApplicationController
  def index
    HelloWorldJob.perform_later "Hello World"
  end
end
```

이제 foreman gem 을 이용해서 시작할때 job queue(redis), job worker(sidekiq), web server(rails)를 실행한다.


```sh
# Procfile
web: bundle exec puma -p $PORT -e $RACK_ENV   # Command to start your server
redis: redis-server                           # Command to start redis
worker: bundle exec sidekiq                   # Command to start sidekiq
```

```sh
$ gem install foreman
$ foreman start
```