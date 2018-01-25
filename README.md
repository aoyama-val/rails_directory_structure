# README

## モデル、ビュー、コントローラ等以外の自作クラスをどこに置くか？

基本的に、autoloadできるファイルはapp/libの中に置きます。 
autoloadできないファイルはlib/requiredの中に置きます。 
（例：標準クラスやgem内のクラスの拡張、1ファイル内に複数のクラスが入っているファイルなど） 

`config/initializers/required.rb` により、`lib/required/*.rb` の全ファイルが`require`されます。 
