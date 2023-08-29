class Helloworld < Formula
  desc "This is a hello world program written in Fortran"
  homepage "https://vikas.easifem.com"
  url "https://github.com/vickysharma0812/HelloWorld.git", tag: "v23.09.2"
  license "MIT"
  head "https://github.com/vickysharma0812/HelloWorld.git", branch: "main"

  bottle do
    rebuild 1
    sha256 cellar: :any, arm64_ventura: "314d93af56b0fcbcd9be6881b89f6c7b2c55959802a6380c8c9f613ec286dd66"
  end

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    system "false"
  end
end
