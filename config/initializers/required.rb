# lib/required/*.rbをrequireする。
#
# 基本的に、autoloadできるファイルはapp/libの中に置きます。
# autoloadできないファイルはlib/requiredの中に置きます。
# （例：標準クラスやgem内のクラスの拡張、1ファイル内に複数のクラスが入っているファイルなど）

Dir.glob(Rails.root.join("lib", "required/*.rb")).each do |file|
  require file
end
