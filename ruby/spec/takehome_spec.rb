require 'fileutils'

RSpec.describe do
  it "Is isolated from other builds" do
    expect(File).not_to exist('/tmp/cisco-datacore-takehome')
    FileUtils.touch('/tmp/cisco-datacore-takehome')
  end
end
