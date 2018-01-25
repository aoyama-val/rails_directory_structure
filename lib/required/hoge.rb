# このファイルには2個のモジュールが入っているのでautoloadにできない
# （片方だけならできるが、両方はできない）

module Asd
  module Hoge
    def self.hoge
      "hogehoge"
    end
  end
end

module Abc
  def self.abc
    "abc"
  end
end
