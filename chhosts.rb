REPOSITORY_URL="https://github.com/kws9/chhosts".freeze
HOMEBREW_CHHOSTS_VERSION="0.0.2".freeze

class Chhosts < Formula
  desc "Easy to switch hosts."
  homepage REPOSITORY_URL
  url "#{REPOSITORY_URL}/archive/#{HOMEBREW_CHHOSTS_VERSION}.tar.gz",
    :tag => HOMEBREW_CHHOSTS_VERSION.to_s
  head "#{REPOSITORY_URL}.git", :branch => "master"
  def install
    prefix.install "bin"
    prefix.install "hosts"
  end

  test do
    system "false"
  end
end
