class Helloworld < Formula
  desc "This is a hello world program written in Fortran"
  homepage "https://vikas.easifem.com"
  url "https://github.com/vickysharma0812/HelloWorld.git", tag: "v23.09.2"
  license "MIT"
  head "https://github.com/vickysharma0812/HelloWorld.git", branch: "main"

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
