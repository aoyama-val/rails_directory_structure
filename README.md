# README

## Railsにおけるautoloadの基本

現在読み込まれていないクラス・モジュール（例えば`Hoge::Moge`）を参照して
`NameError: uninitialized constant Hoge::Moge`になったとします。
すると`autoload_paths`の各ディレクトリに対し`hoge/moge.rb`をつけた
パスが検索され、見つかったらそのファイルがロードされます。

autoloadパスを調べるには：

```
puts ActiveSupport::Dependencies.autoload_paths
```

Railsでは`app`内にある各ディレクトリは自動的に`autoload_paths`に追加されます。


## モデル、ビュー、コントローラ等以外の自作クラスをどこに置くか？

autoloadできるファイルは`app/lib`の中に置きます。 `Hoge::Moge`を定義するファイルならパスは`app/lib/hoge/moge.rb`になります。
特に理由がない限り、自作クラスもautoloadさせるようにした方がいいです。開発中にファイルを変更したとき、自動的に再読込されるためです。

autoloadできないファイルは`lib/required`の中に置きます。 
（例：標準クラスやgem内のクラスの拡張、1ファイル内に複数のクラスが入っているファイルなど） 

`config/initializers/required.rb`により`lib/required/*.rb`の全ファイルが`require`されます。 

`lib`ディレクトリは`autoload_paths`に追加しません。
Railsのデフォルトでそうなっておらず、またそうする必要がないためです。
