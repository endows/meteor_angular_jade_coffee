# Meteor + Angular + Jade + CoffeeScriptで作る、JSフルスタックフレームワーク
## 忙しい人はこちらから
```
git clone https://github.com/endows/meteor_angular_jade_coffee myapp
cd myapp
meteor
=>http://localhost:3000
```

## 手順① Angularを使えるようにする。
```
meteor create myapp
cd myapp
meteor add urigo:angular
```
さっそくですが、作られたファイルを消します。そして以下のファイルを作ります。
```
rm myapp*
touch app.js
touch index.html
touch posts.ng.html
```
posts.ng.htmlはお好きな名前にしてください。公式サイトではindex.ng.htmlにしていますが、それだとこの後の手順でエラーがでるので別名をおすすめ。ファイル内容を以下に
```js:app.js
if (Meteor.isClient) {
  var myModule = angular.module('posts', ['angular-meteor']).controller('postsCtrl', function($scope) {
    $scope.name = 'world';
  });
}

```
```HTML:index.html
<body>
  <ng-include ng-app='posts' src="'posts.ng.html'"></ng-include>
</body>
```
```posts.ng.html
<div ng-controller='postsCtrl'>
  Hello {{name}}
</div>
```
細かい説明ははぶきますが、要はindex.htmlでangularをロードします。あとはあたかもAngularアプリのようにゴリゴリ書けます。
## 手順② Jadeを使えるようにする
__注意__ 普通にJadeライブラリを入れると、エラーがでます。そこで、専用のjadeライブラリを入れます。
```
meteor add civilframe:angular-jade
rm posts.ng.html
touch posts.ng.jade
```
```posts.ng.jade
div(ng-controller='postsCtrl')
  h1 Hello{{name}}

```
```index.html
<body>
  <ng-include ng-app='channel' src="'channel.html'"></ng-include>
</body>
```
__注意__ civilframe:angular-jadeは、\*.ng.jadeファイルを\*.htmlにコンパイルします。
## 手順③ CoffeeScriptを使えるようにする
これは普通にできます
```
meteor add coffeescript
rm app.js
touch app.coffee
```
```app.coffee
if Meteor.isClient
  myModule = angular.module('posts', [ 'angular-meteor' ]).controller('postsCtrl', ($scope) ->
    $scope.name = 'world!!!'
    return
  )

```
以上です。それでは、楽しいMeteorライフを。
## 作者について
遠藤孝志(えんどうたかし)。福島県出身の２２歳。
オンライン観戦アプリ、パブリックビューイング([public-viewing.tk](public-viewing.tk))の運営者。使用言語はNode.js,Rails,Angular,Meteor。現在、協力者募集中
Twitter : [@kyouzyuuuuuuuu1](https://twitter.com/kyouzyuuuuuuuu1)
github : https://github.com/endows/
mail : endotakashi1992@gmail.com
