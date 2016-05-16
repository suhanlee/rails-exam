# Assets
- Assets 은 자바스크립트와 스타일시트 등을 뜻함.
- Rails 4 이후부터는 이러한 Assets을 읽어들이기 위해서 Sprocket이라는 라이브러리 사용
- Sprocket은 매니페스트를 읽어들여서 수행
- Rails.application.config.assets.paths 에 assets 에 포함되어 있는 경로를 확인할 수 있음

```ruby
/app/assets/javascripts/application.js
/app/assets/stylesheets/application.css
```  
- 매니페스트 정의 지시자는 주석(//, *)다음에 "=<지시자> <매개변수>"의 형식으로 표기

```sh
require [path] # 지정된 경로의 파일을 1회만 불러옴
include [path] # 지정된 경로의 파일을 같은 파일이라도 여러번 불러옴
require_driectory [path] # 지정된 경로의 파일을 알파벳 순으로 불러옴
require_tree [path] # 지정된 경로의 파일을 재귀적으로 불러옴
require_self # 현재 파일의 내용을 require, include 사이에 삽입
```

- 뷰 헬퍼

```ruby
javascript_include_tag(src [,opts])
stylesheet_link_tag(src, [,opts])
```
