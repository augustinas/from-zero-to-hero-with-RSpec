# Tests to pass for Morse tutorial

require_relative '. morse'

describe Morse do

  describe "should be constructed with options hash" do
    describe "to accept phrases" do
      it "stores the phrase as instance variable" do
        @str = Morse.new(:str: "CONVERT ME TO MORSE")
        @str.string.should eql "CONVERT ME TO MORSE"
      end
    end

    describe "to accept morse code" do
      it "store the code as an instance variabe" do
        @mor = Morse.new(:morse: "-.-- --- ..-   -.-. .- -. -. --- -   - . .-.. .-..   .-- .... .- -   ..   .- --   ... .- -.-- .. -. --.")
        @mor.morse_code.should eql "-.-- --- ..-   -.-. .- -. -. --- -   - . .-.. .-..   .-- .... .- -   ..   .- --   ... .- -.-- .. -. --."
      end
    end

    describe "fails elegantly when no hash is given" do
      it "sets instance variables to 'false' by default" do
        Morse.new.string.should be_falsy
        Morse.new.morse_code.should be_falsy
      end
    end
  end

  describe "converts input to two dimensional array" do
    it "can represent strings as two dimensional array" do
      @str.represent_as_array.should eql [%W[C O N V E R T], %W[M E], %W[T O], %W[M O R S E]]
    end

    # it "checks and removes invalid characters" do
    #   Morse.new(:str: "WHAT% IS -*-HAPPENING?").represent_as_array.shoul eql [%W[W H A T], %W[I S], %W[H A P P E N I N G]]
    # end

    # it "ensures characters are in capital case" do
    #   Morse.new(:str: "What Is Happening").represent_as_array.shoul eql [%W[W H A T], %W[I S], %W[H A P P E N I N G]]
    # end

    it "can represent Morse code as two dimensional array" do
      @mor.represent_as_array.should eql [%W[-.-- --- ..-], %W[-.-. .- -. -. --- -], %W[- . .-.. .-..], %W[.-- .... .- -], %W[..], %W[.- --], %W[... .- -.-- .. -. --.]
    end

    # it "removes leading and trailing whitespace" do
    #   Morse.new(:morse: "     -.- . . .--.   --. --- .. -. --.   ").represent_as_array.should eql [%W[-.- . . .--.], %W[--. --- .. -. --.]]
    # end
  end

  describe "encodes Morse code" do
    it "converts strings to Morse code" do
      @str.encode.should eql "-.-. --- -. ...- . .-. -   -- .   - ---   -- --- .-. ... ."
      @str.string = "OH SUNNY DAY"
      @str.encode.should eql "--- ....   ... ..- -. -. -.--   -.. .- -.--"
    end
  end

  decribe "decodes Morse code" do
    it "converts Morse cod into string" do
      @mor.decode.should eql "YOU CANNOT TELL WHAT I AM SAYING"

      @mor.morse_code = ".-. .- .. -. -.--   -.. .- -.--"
      @mor.decode.should eql "RAINY DAY"
    end
  end
end