# このファイルは config/initializers/required.rb から require される。
# 初期化時に require しておくファイルを列挙する。
# 
# 基本的に、autoloadできるファイルはapp/libの中に置く。
# autoloadできないファイルはlib/requiredの中に置く。
# （例：標準クラスやgem内のクラスの拡張。1ファイル内に複数のモジュールが入っているファイル）

Dir.glob(Rails.root.join("lib", "required/*.rb")).each do |file|
  require file
end
