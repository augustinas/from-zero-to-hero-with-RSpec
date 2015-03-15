# Tests to pass for Morse tutorial

require_relative './spec_helper'

describe Morse do

describe "#new" do
    context "initializes with options hash" do
      it "stores a given string" do
        @str = Morse.new(:str => "CONVERT ME TO MORSE")
        expect(@str.string).to eql "CONVERT ME TO MORSE"
      end

      it "store a given Morse code" do
        @mor = Morse.new(:morse => "-.-- --- ..-   -.-. .- -. -. --- -   - . .-.. .-..   .-- .... .- -   ..   .- --   ... .- -.-- .. -. --.")
        expect(@mor.morse_code).to eql "-.-- --- ..-   -.-. .- -. -. --- -   - . .-.. .-..   .-- .... .- -   ..   .- --   ... .- -.-- .. -. --."
      end

      it "sets absent instance variables to 'false'" do
        expect(Morse.new.string).to eql false
        expect(Morse.new.morse_code).to eql false
      end
    end
  end

  describe "#represent_as_array" do
    it "can represent strings as two dimensional array" do
      expect(@str.represent_as_array).to eql [%W[C O N V E R T], %W[M E], %W[T O], %W[M O R S E]]
    end

    # it "checks and removes invalid characters" do
    #   Morse.new(:str => "WHAT% IS -*-HAPPENING?").represent_as_array.shoul eql [%W[W H A T], %W[I S], %W[H A P P E N I N G]]
    # end

    # it "ensures characters are in capital case" do
    #   Morse.new(:str => "What Is Happening").represent_as_array.shoul eql [%W[W H A T], %W[I S], %W[H A P P E N I N G]]
    # end

    it "can represent Morse code as two dimensional array" do
      expect(@mor.represent_as_array).to eql [%W[-.-- --- ..-], %W[-.-. .- -. -. --- -], %W[- . .-.. .-..], %W[.-- .... .- -], %W[..], %W[.- --], %W[... .- -.-- .. -. --.]]
    end

    # it "removes leading and trailing whitespace" do
    #   Morse.new(:morse => "     -.- . . .--.   --. --- .. -. --.   ").represent_as_array.should eql [%W[-.- . . .--.], %W[--. --- .. -. --.]]
    # end
  end

  describe "#encodes" do
    it "converts strings to Morse code" do
      expect(@str.encode).to eql "-.-. --- -. ...- . .-. -   -- .   - ---   -- --- .-. ... ."
      @str.string = "OH SUNNY DAY"
      expect(@str.encode).to eql "--- ....   ... ..- -. -. -.--   -.. .- -.--"
    end
  end

  describe "#decode" do
    it "converts Morse code into string" do
      expect(@mor.decode).to eql "YOU CANNOT TELL WHAT I AM SAYING"

      @mor.morse_code = ".-. .- .. -. -.--   -.. .- -.--"
      expect(@mor.decode).to eql "RAINY DAY"
    end
  end
end