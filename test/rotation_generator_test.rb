# require 'minitest'
# require 'minitest/autorun'
# require 'minitest/pride'
require './test/test_helper'
require './lib/rotation_generator'


class RotationGeneratorTest < Minitest::Test

	def test_first_index_is_the_first_two_digits_of_encryption_key
		rot_test = RotationGenerator.new("12345")
		assert_equal rot_test.splits[0], 12
		rot_test = RotationGenerator.new("22334")
		assert_equal rot_test.splits[0], 22
		rot_test = RotationGenerator.new("59234")
		assert_equal rot_test.splits[0], 59
	end

	def test_second_index_is_the_second_and_third_digits_of_encryption_key
		rot_test = RotationGenerator.new("12345")
		assert_equal rot_test.splits[1], 23
		rot_test = RotationGenerator.new("22334")
		assert_equal rot_test.splits[1], 23
		rot_test = RotationGenerator.new("59234")
		assert_equal rot_test.splits[1], 92
	end

	def test_c_is_the_third_and_fourth_digits_of_encryption_key
		rot_test = RotationGenerator.new("12345")
		assert_equal rot_test.splits[2], 34
		rot_test = RotationGenerator.new("22334")
		assert_equal rot_test.splits[2], 33
		rot_test = RotationGenerator.new("59234")
		assert_equal rot_test.splits[2], 23
	end

	def test_d_is_the_fourth_and_fifth_digits_of_encryption_key
		rot_test = RotationGenerator.new("12345")
		assert_equal rot_test.splits[3], 45
		rot_test = RotationGenerator.new("22334")
		assert_equal rot_test.splits[3], 34
		rot_test = RotationGenerator.new("59234")
		assert_equal rot_test.splits[3], 34
	end
end

	# def test_it_generates_a_5_digit_key
	# 	rot_test = RotationGenerator.new
	# 	rot_test.generate_key
	# 	assert rot_test.key.length == 5
	# end
	#
	# def test_keys_are_random
	# 	rot1 = RotationGenerator.new
	# 	rot1.generate_key
	# 	rot2 = RotationGenerator.new
	# 	rot2.generate_key
	# 	refute_equal rot1.key, rot2.key
	# 	rot3 = RotationGenerator.new
	# 	rot2.generate_key
	# 	refute_equal rot3.key, rot2.key
	# 	refute_equal rot3.key, rot1.key
	# end
