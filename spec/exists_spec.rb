require_relative "../lib/exists"
require "minitest/autorun"

describe Exists do
  describe "Object#exists" do
    it "returns itself for non-null objects" do
      object = Object.new
      assert_equal object, object.exists
    end

    it "returns nil for nil" do
      assert_equal nil, nil.exists
    end

    it "returns nil for custom null objects" do
      null_object = Object.new
      def null_object.null?() true end
      assert_equal nil, null_object.exists
    end
  end
end

