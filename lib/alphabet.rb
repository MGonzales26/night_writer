class Alphabet

  def braille_alphabet
    {
    "a" => ["0.", "..", ".."],
    "b" => ["0.", "0.", ".."],
    "c" => ["00", "..", ".."],
    "d" => ["00", ".0", ".."],
    "e" => ["0.", ".0", ".."],
    "f" => ["00", "0.", ".."],
    "g" => ["00", "00", ".."],
    "h" => ["0.", "00", ".."],
    "i" => [".0", "0.", ".."],
    "j" => [".0", "00", ".."],
    "k" => ["0.", "..", "0."],
    "l" => ["0.", "0.", "0."],
    "m" => ["00", "..", "0."],
    "n" => ["00", ".0", "0."],
    "o" => ["0.", ".0", "0."],
    "p" => ["00", "0.", "0."],
    "q" => ["00", "00", "0."],
    "r" => ["0.", "00", "0."],
    "s" => [".0", "0.", "0."],
    "t" => [".0", "00", "0."],
    "u" => ["0.", "..", "00"],
    "v" => ["0.", "0.", "00"],
    "w" => [".0", "00", ".0"],
    "x" => ["00", "..", "00"],
    "y" => ["00", ".0", "00"],
    "z" => ["0.", ".0", "00"],
    " " => ["..", "..", ".."],
    "!" => ["..", "00", "0."],
    "'" => ["..", "..", "0."],
    "," => ["..", "0.", ".."],
    "-" => ["..", "..", "00"],
    "." => ["..", "00", ".0"],
    ":" => ["..", "00", ".."],
    "/" => [".0", "..", "0."],
    "?" => ["..", "00", "0."],
    "#" => [".0", ".0", "00"],
    "0" => [[".0", ".0", "00"], [".0", "00", ".."]],
    "1" => [[".0", ".0", "00"], ["0.", "00", "0."]],
    "2" => [[".0", ".0", "00"], ["0.", "0.", ".."]],
    "3" => [[".0", ".0", "00"], ["00", "..", ".."]],
    "4" => [[".0", ".0", "00"], ["00", ".0", ".."]],
    "5" => [[".0", ".0", "00"], ["0.", ".0", ".."]],
    "6" => [[".0", ".0", "00"], ["00", "0.", ".."]],
    "7" => [[".0", ".0", "00"], ["00", "00", ".."]],
    "8" => [[".0", ".0", "00"], ["0.", "00", ".."]],
    "9" => [[".0", ".0", "00"], [".0", "0.", ".."]],
    "A" => [["..", "..", ".0"], ["0.", "..", ".."]],
    "B" => [["..", "..", ".0"], ["0.", "0.", ".."]],
    "C" => [["..", "..", ".0"], ["00", "..", ".."]],
    "D" => [["..", "..", ".0"], ["00", ".0", ".."]],
    "E" => [["..", "..", ".0"], ["0.", ".0", ".."]],
    "F" => [["..", "..", ".0"], ["00", "0.", ".."]],
    "G" => [["..", "..", ".0"], ["00", "00", ".."]],
    "H" => [["..", "..", ".0"], ["0.", "00", ".."]],
    "I" => [["..", "..", ".0"], [".0", "0.", ".."]],
    "J" => [["..", "..", ".0"], [".0", "00", ".."]],
    "K" => [["..", "..", ".0"], ["0.", "..", "0."]],
    "L" => [["..", "..", ".0"], ["0.", "0.", "0."]],
    "M" => [["..", "..", ".0"], ["00", "..", "0."]],
    "N" => [["..", "..", ".0"], ["00", ".0", "0."]],
    "O" => [["..", "..", ".0"], ["0.", ".0", "0."]],
    "P" => [["..", "..", ".0"], ["00", "0.", "0."]],
    "Q" => [["..", "..", ".0"], ["00", "00", "0."]],
    "R" => [["..", "..", ".0"], ["0.", "00", "0."]],
    "S" => [["..", "..", ".0"], [".0", "0.", "0."]],
    "T" => [["..", "..", ".0"], [".0", "00", "0."]],
    "U" => [["..", "..", ".0"], ["0.", "..", "00"]],
    "V" => [["..", "..", ".0"], ["0.", "0.", "00"]],
    "W" => [["..", "..", ".0"], [".0", "00", ".0"]],
    "X" => [["..", "..", ".0"], ["00", "..", "00"]],
    "Y" => [["..", "..", ".0"], ["00", ".0", "00"]],
    "Z" => [["..", "..", ".0"], ["0.", ".0", "00"]]
    }
  end
end