require 'colorize'
class EightBall

  attr_reader :messages

  def initialize
    @messages = [
      "It is certain",
      "It is decidedly so",
      "Without a doubt",
      "Yes definitely",
      "You may rely on it",
      "As I see it, yes",
      "Yes",
      "Outlook good",
      "Signs point to yes",
      "Most likely",
      "Reply hazy try again",
      "Ask again later",
      "Better not tell you now",
      "Cannot predict now",
      "Concentrate and ask again",
      "Don't count on it",
      "My reply is no",
      "My sources say no",
      "Outlook not so good",
      "Very doubtful"
    ]
    @messages = @messages.each_with_index.map do |a,i|
        case i
        when 0..8
           a.green
        when 9..14
          a.yellow
        when 15..19
          a.blue.on_red.blink
        end
      end
  end

  def shake
    @messages.sample
  end

  def thinking
    puts ""
    sleep(1)
    puts "hmm... let me think about that one"
    sleep(0)
    puts "..."
    sleep(4)
  end

end
